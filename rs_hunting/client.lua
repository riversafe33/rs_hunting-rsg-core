local Core = exports['rsg-core']:GetCoreObject()
local peltz = {}
local prompts = GetRandomIntInRange(0, 0xffffff)
local openButcher
local pressed = false

RegisterNetEvent('rs_hunting:finalizeReward', function(entity, horse)
    if entity and DoesEntityExist(entity) then
        DeleteEntity(entity)
        Citizen.InvokeNative(0x5E94EA09E7207C16, entity)
    end
    if horse and DoesEntityExist(horse.horse) then
        Citizen.InvokeNative(0x627F7F3A0C4C51FF, horse.horse, horse.pelt)
    end
end)

RegisterNetEvent("rs_hunting:unlock", function()
    pressed = false
end)

function UseScenarioPointOnPed(ped, scenarioName, radius)
    local coords = GetEntityCoords(ped)
    local DataStruct = DataView.ArrayBuffer(256 * 4)
    local count = Citizen.InvokeNative(0x345EC3B7EBDE1CB5, coords, 3.0, DataStruct:Buffer(), 10)
    if count ~= false then
        for i = 1, count, 1 do
            local scenario = DataStruct:GetInt32(8 * i)
            local scenario_type = GetScenarioPointType(scenario)
            if scenario_type == GetHashKey(scenarioName) then
                TaskUseScenarioPoint(ped, scenario, "", -1.0, true, false, 0, false, -1.0, true)
                return true
            end
        end
    end
    return false
end

function CreateButcherPed(i, v)
    local hashModel = joaat(v.npcmodel)
    if IsModelValid(hashModel) then
        RequestModel(hashModel, false)
        while not HasModelLoaded(hashModel) do Wait(100) end
    else
        return nil
    end

    local npc = CreatePed(hashModel, v.coords.x, v.coords.y, v.coords.z, v.heading, false, false, false, false)
    repeat Wait(0) until DoesEntityExist(npc)

    Citizen.InvokeNative(0x283978A15512B2FE, npc, true)
    PlaceEntityOnGroundProperly(npc, true)
    SetEntityInvincible(npc, true)
    SetBlockingOfNonTemporaryEvents(npc, true)
    SetEntityAsMissionEntity(npc, true, true)

    Config.Butchers[i].NpcHandle = npc

    if v.prop and v.prop ~= false and v.propcoords then
        local model = joaat(v.prop)
        RequestModel(model)
        while not HasModelLoaded(model) do Wait(10) end

        local obj = CreateObject(model, v.propcoords.x, v.propcoords.y, v.propcoords.z, true, true, false)
        PlaceEntityOnGroundProperly(obj)
        SetEntityAsMissionEntity(obj, true, true)
        SetEntityRotation(obj, 0.0, 0.0, 0.0, 2, true)

        v.PropHandle = obj
    end

    Citizen.CreateThread(function()

        if v.scenario and not v.scenariocoords then
            local found = false
            local tries = 0
            while not found and tries < 5 do
                found = UseScenarioPointOnPed(npc, v.scenario, 5.0)
                if found then return end
                tries = tries + 1
                Citizen.Wait(1000)
            end
        end

        if v.scenariocoords and v.scenariotype then
            local scenarioHash = GetHashKey(v.scenariotype)

            local scenarioPoint = Citizen.InvokeNative(
                0x94B745CE41DB58A1,
                scenarioHash,
                v.scenariocoords.x,
                v.scenariocoords.y,
                v.scenariocoords.z,
                v.heading,
                0, 0, 1
            )

            v.ScenarioPoint = scenarioPoint

            local canUse = Citizen.InvokeNative(
                0xAB643407D0B26F07,
                npc,
                scenarioPoint,
                0, 0, 1
            )

            if canUse == true or canUse == 1 then
                TaskUseScenarioPoint(npc, scenarioPoint, "", -1.0, true, false, 0, false)
            end
        end
    end)

    return npc
end

function StartButchers()
    Citizen.CreateThread(function()
        while true do
            local playerCoords = GetEntityCoords(PlayerPedId())

            for i, v in ipairs(Config.Butchers) do
                if v.butcherped then

                    local dist = #(playerCoords - vector3(v.coords.x, v.coords.y, v.coords.z))
                    local spawnRadius = 50
                    local despawnRadius = 70

                    if dist <= spawnRadius then
                        if not v.NpcHandle or not DoesEntityExist(v.NpcHandle) then
                            CreateButcherPed(i, v)
                        end
                    elseif dist > despawnRadius then
                        if v.NpcHandle and DoesEntityExist(v.NpcHandle) then
                            DeleteEntity(v.NpcHandle)
                            v.NpcHandle = nil
                        end

                        if v.ScenarioPoint then
                            Citizen.InvokeNative(0x81948DFE4F5A0283, v.ScenarioPoint)
                            v.ScenarioPoint = nil
                        end

                        if v.PropHandle and DoesEntityExist(v.PropHandle) then
                            DeleteObject(v.PropHandle)
                            v.PropHandle = nil
                        end
                    end
                end
            end
            Citizen.Wait(2000)
        end
    end)
end

function CreateButcherBlips()
    for i, v in ipairs(Config.Butchers) do
        if v.showblip then
            local blip = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, v.coords)
            SetBlipSprite(blip, v.blip, true)
            Citizen.InvokeNative(0x9CB1A1623062F402, blip, v.butchername)
            v.BlipHandle = blip
        end
    end
end

local function awardQuality(quality, entity, horse, cb)
    local skinFound = nil
    for k, v in pairs(Config.Animals) do
        if (quality == v.perfect) or (quality == v.good) or (quality == v.poor) then
            skinFound = k
            break
        end
    end

    if skinFound then
        TriggerServerEvent("rs_hunting:giveReward", "pelt", {
            model = skinFound,
            quality = quality,
            entity = entity,
            horse = horse
        }, false)
        cb()
    end
end

local function SellAnimal()
    local horse = Citizen.InvokeNative(0x4C8B59171957BCF7, PlayerPedId())
    local alreadysoldanimal = false

    if horse and DoesEntityExist(horse) and NetworkGetEntityOwner(horse) == PlayerId() then
        if Citizen.InvokeNative(0xA911EE21EDF69DAF, horse) then
            local holding2 = Citizen.InvokeNative(0xD806CD2A4F2C2996, horse)
            local model2 = GetEntityModel(holding2)

            local quality2 = Citizen.InvokeNative(0x31FEF6A20F00B963, holding2)
            if Config.Animals[model2] then
                alreadysoldanimal = true
                local netid = NetworkGetNetworkIdFromEntity(holding2)
                local isSkinned2 = Citizen.InvokeNative(0x88A5564B19C15391, holding2)
                local context2 = isSkinned2 and "skinnedcarcass" or "carcass"
                TriggerServerEvent("rs_hunting:giveReward", context2,
                    { model = model2, entity = holding2, netid = netid, horse = horse }, false)
            elseif (quality2 ~= false and quality2 ~= nil) then
                awardQuality(quality2, holding2, nil, function()
                    alreadysoldanimal = true
                end)
            end
        end

        if Citizen.InvokeNative(0x0CEEB6F4780B1F2F, horse, 0) then
            for x = #peltz, 1, -1 do
                local y = peltz[x]
                if not y.sold then
                    y.sold = true
                    local q = Citizen.InvokeNative(0x0CEEB6F4780B1F2F, horse, x - 1)
                    awardQuality(q, nil, { horse = horse, pelt = q }, function()
                        alreadysoldanimal = true
                    end)
                end
                table.remove(peltz, x)
            end
        end
    end

    local holding = Citizen.InvokeNative(0xD806CD2A4F2C2996, PlayerPedId())
    if holding and alreadysoldanimal == false then
        local quality = Citizen.InvokeNative(0x31FEF6A20F00B963, holding)
        local model = GetEntityModel(holding)

        if holding then
            local entityNetworkId = NetworkGetNetworkIdFromEntity(holding)
            SetNetworkIdExistsOnAllMachines(entityNetworkId, true)
            local entityId = NetworkGetEntityFromNetworkId(entityNetworkId)

            if not NetworkHasControlOfEntity(entityId) then
                NetworkRequestControlOfEntity(entityId)
                NetworkRequestControlOfNetworkId(entityNetworkId)
            end
        end

        if Config.Animals[model] then
            alreadysoldanimal = true
            local netid = NetworkGetNetworkIdFromEntity(holding)
            local isSkinned = Citizen.InvokeNative(0x88A5564B19C15391, holding)
            local context = isSkinned and "skinnedcarcass" or "carcass"
            return TriggerServerEvent("rs_hunting:giveReward", context,
                { model = model, entity = holding, netid = netid }, false)
        else
            awardQuality(quality, holding, nil, function()
                alreadysoldanimal = true
            end)
        end
    end

    if (alreadysoldanimal == false) then
        if holding == false then
            lib.notify({ description = Config.Language.NotHoldingAnimal, type = 'error', duration = 4000, position    = 'top' })
        else
            lib.notify({ description = Config.Language.NotInTheButcher, type = 'error', duration = 4000, position    = 'top' })
        end
    end

    SetTimeout(5000, function()
        pressed = false
    end)
end

CreateThread(function()
    repeat Wait(1000) until LocalPlayer.state.isLoggedIn
    local str = Config.Language.press
    openButcher = PromptRegisterBegin()
    PromptSetControlAction(openButcher, Config.keys.sellButcher)
    str = VarString(10, 'LITERAL_STRING', str)
    PromptSetText(openButcher, str)
    PromptSetEnabled(openButcher, 1)
    PromptSetVisible(openButcher, 1)
    PromptSetStandardMode(openButcher, 1)
    PromptSetHoldMode(openButcher, 1)
    PromptSetGroup(openButcher, prompts)
    Citizen.InvokeNative(0xC5F428EE08FA7F2C, openButcher, true)
    PromptRegisterEnd(openButcher)
end)

CreateThread(function()
    repeat Wait(1000) until LocalPlayer.state.isLoggedIn

    Citizen.InvokeNative(0x39363DFD04E91496, PlayerId(), true)
    while true do
        local sleep = 1000
        local player = PlayerPedId()
        local horse = Citizen.InvokeNative(0x4C8B59171957BCF7, player)
        if horse ~= nil then
            local playerCoords = GetEntityCoords(player)
            local horsecoords = GetEntityCoords(horse)
            local holding = Citizen.InvokeNative(0xD806CD2A4F2C2996, player)
            local quality = Citizen.InvokeNative(0x31FEF6A20F00B963, holding)
            local dist = GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, horsecoords.x,
                horsecoords.y, horsecoords.z, false)

            if 2 > dist then
                local model = GetEntityModel(holding)
                if holding ~= false and Config.Animals[model] == nil then
                    local maxpelts = 3
                    if maxpelts > #peltz then
                        sleep = 0
                        local label = CreateVarString(10, 'LITERAL_STRING', Config.Language.stow)
                        PromptSetActiveGroupThisFrame(prompts, label)

                        if Citizen.InvokeNative(0xC92AC953F0A982AE, openButcher) then
                            TaskPlaceCarriedEntityOnMount(player, holding, horse, 1)
                            table.insert(peltz, {
                                holding = holding,
                                quality = quality
                            })

                            Wait(500)
                        end
                    end
                end
            end
        end
        Wait(sleep)
    end
end)

CreateThread(function()
    repeat Wait(1000) until LocalPlayer.state.isLoggedIn

    while true do
        Wait(0)
        local size = GetNumberOfEvents(0)
        if size > 0 then
            for index = 0, size - 1 do
                local event = GetEventAtIndex(0, index)
                if event == `EVENT_LOOT_COMPLETE` then
                    local eventDataSize = 3
                    local eventDataStruct = DataView.ArrayBuffer(24)
                    eventDataStruct:SetInt32(0, 0)
                    eventDataStruct:SetInt32(8, 0)
                    eventDataStruct:SetInt32(16, 0)
                    local is_data_exists = Citizen.InvokeNative(0x57EC5FA4D4D6AFCA, 0, index, eventDataStruct:Buffer(), eventDataSize)
                    if is_data_exists then
                        if PlayerPedId() == eventDataStruct:GetInt32(0) then
                            local pedid = eventDataStruct:GetInt32(8)
                            if eventDataStruct:GetInt32(16) == 1 then
                                local model = GetEntityModel(pedid)
                                if model and Config.SkinnableAnimals[model] then
                                    if Config.SkinnableAnimals[model].deletePelt then
                                        Wait(1000)
                                        local holding = Citizen.InvokeNative(0xD806CD2A4F2C2996, PlayerPedId())
                                        local isPelt = GetIsCarriablePelt(holding) == 1
                                        local isAnimal = GetIsAnimal(holding) == 1

                                        if isPelt and not isAnimal then
                                            SetEntityAsMissionEntity(holding, true, true)
                                            SetEntityAsNoLongerNeeded(holding)
                                            DeleteEntity(holding)
                                        end
                                    end
                                    TriggerServerEvent("rs_hunting:giveReward", "skinned", { model = model }, true)
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end)

CreateThread(function()
    if not Config.butcherfunction then
        return
    end

    if Config.butcherfunction then
        StartButchers()
        CreateButcherBlips()
    end

    while true do
        local sleep = 1000
        for i, v in ipairs(Config.Butchers) do
            local playerCoords = GetEntityCoords(PlayerPedId())
            local distance = #(playerCoords - v.coords)

            if distance <= v.radius then
                sleep = 0
                local label = CreateVarString(10, 'LITERAL_STRING', Config.Language.sell)
                PromptSetActiveGroupThisFrame(prompts, label)

                if Citizen.InvokeNative(0xC92AC953F0A982AE, openButcher) then
                    if not pressed then
                        pressed = true
                        if Config.joblocked then
                            local result = Core.Functions.TriggerCallback("rs_hunting:GetPlayerJob", function(playerJob)
                                if playerJob == v.butcherjob then
                                    SellAnimal()
                                else
                                    lib.notify({
                                        description = Config.Language.notabutcher .. " : " .. v.butcherjob,
                                        type = 'error',
                                        duration = 4000,
                                        position    = 'top'
                                    })
                                end
                            end)
                        else
                            SellAnimal()
                        end
                    end
                end
            end
        end

        Wait(sleep)
    end
end)

AddEventHandler("onResourceStop", function(resourceName)
    if resourceName ~= GetCurrentResourceName() then
        return
    end

    for i, v in ipairs(Config.Butchers) do

        if v.NpcHandle and DoesEntityExist(v.NpcHandle) then
            DeleteEntity(v.NpcHandle)
            v.NpcHandle = nil
        end

        if v.PropHandle and DoesEntityExist(v.PropHandle) then
            DeleteObject(v.PropHandle)
            v.PropHandle = nil
        end

        if v.ScenarioPoint then
            Citizen.InvokeNative(0x81948DFE4F5A0283, v.ScenarioPoint)
            v.ScenarioPoint = nil
        end

        if v.BlipHandle then
            RemoveBlip(v.BlipHandle)
            v.BlipHandle = nil
        end
    end
end)

function LoadTexture(dict)
    if Citizen.InvokeNative(0x7332461FC59EB7EC, dict) then
        RequestStreamedTextureDict(dict, true)
        while not HasStreamedTextureDictLoaded(dict) do
            Wait(1)
        end
        return true
    else
        return false
    end
end

function bigInt(text)
    local dv = DataView.ArrayBuffer(16)
    dv:SetInt64(0, text)
    return dv:GetInt64(0)
end

exports("NotifyLeftRank",function(title, subTitle, dict, icon, duration, color)
    local struct1 = DataView.ArrayBuffer(8*7)
    local struct2 = DataView.ArrayBuffer(8*8)
    struct1:SetInt32(8*0,duration)
    --struct1:SetInt64(8*1,bigInt(sound_dict))
    --struct1:SetInt64(8*2,bigInt(sound))
    local string1 = CreateVarString(10, "LITERAL_STRING", title)
    local string2 = CreateVarString(10, "LITERAL_STRING", subTitle)
    struct2:SetInt64(8*1,bigInt(string1))
    struct2:SetInt64(8*2,bigInt(string2))
    struct2:SetInt32(8*3,0)
    struct2:SetInt64(8*4,bigInt(GetHashKey(dict)))
    struct2:SetInt64(8*5,bigInt(GetHashKey(icon)))
    struct2:SetInt64(8*6,bigInt(GetHashKey(color or "COLOR_WHITE")))
    Citizen.InvokeNative(0x26E87218390E6729,struct1:Buffer(),struct2:Buffer(),1,1)
end)

RegisterNetEvent("rs_hunting:NotifyLeftRank")
AddEventHandler("rs_hunting:NotifyLeftRank", function(title, subtitle, dict, icon, duration, color)
    exports["rs_hunting"]:NotifyLeftRank(title, subtitle, dict, icon, duration, color)
end)

if Config.DevMode then
    RegisterCommand("hunt", function(source, args, rawCommand)
        local animal = args[1]
        local freeze = args[2]
        local player = PlayerPedId()
        local playerCoords = GetEntityCoords(player)

        if animal == nil then
            animal = 'a_c_turkey_01'
        end

        if freeze == nil then
            freeze = '2000'
        end

        freeze = tonumber(freeze)

        RequestModel(animal, false)
        while not HasModelLoaded(animal) do
            Wait(10)
        end

        animal = CreatePed(animal, playerCoords.x, playerCoords.y, playerCoords.z, 0.0, true, false, false, false)
        Citizen.InvokeNative(0x77FF8D35EEC6BBC4, animal, 1, 0)
        Wait(freeze)
        FreezeEntityPosition(animal, true)
    end, false)
end