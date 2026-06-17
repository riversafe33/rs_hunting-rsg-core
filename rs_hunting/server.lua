local RSGCore = exports['rsg-core']:GetCoreObject()

function NotifyLeftRank(_source, title, text, dict, icon, duration, color)
    TriggerClientEvent("rs_hunting:NotifyLeftRank", _source, title, text, dict, icon, duration, color)
end

local function giveReward(context, data, skipfinal)
    local _source = source
    local Player = RSGCore.Functions.GetPlayer(_source)
    if not Player then return end

    if Config.joblocked then
        for _, value in ipairs(Config.Butchers) do
            if Player.PlayerData.job.name == value.butcherjob then
                TriggerClientEvent("rs_hunting:lock", _source)
                TriggerClientEvent('ox_lib:notify', _source, {
                    description = "is job locked",
                    type = 'error',
                    duration = 4000,
                    position    = 'top'
                })
                return
            end
        end
    end

    local money = 0
    local animal, found
    local itemsToGive = {}

    if context == "skinned" then
        animal = Config.SkinnableAnimals[data.model]
        if animal then
            found = true

            itemsToGive = animal.items or {}

            money = animal.money or 0
        end

    elseif context == "pelt" then
        animal = Config.Animals[data.model]
        if animal then
            found = true


            if data.quality == animal.perfect then
                money = animal.peltMoneyPerfect or 0
            elseif data.quality == animal.good then
                money = animal.peltMoneyGood or 0
            elseif data.quality == animal.poor then
                money = animal.peltMoneyPoor or 0
            else
                money = animal.peltMoneyPoor or 0
            end
        end

    elseif context == "carcass" then
        animal = Config.Animals[data.model]
        if animal then
            found = true

            money = animal.carcassMoney or 0
        end

    elseif context == "skinnedcarcass" then
        animal = Config.Animals[data.model]
        if animal then
            found = true

            money = animal.skinnedBodyMoney or 0
        end
    end

    if found then
        local monies = {}
        local moneylinux = (math.floor(money * 100) / 100)

        if money ~= 0 then
            local displayMoney = Config.Linux and moneylinux or money
            table.insert(monies, Config.Language.dollar .. displayMoney)
            Player.Functions.AddMoney('cash', money, 'hunting-reward')
        end

        if #monies > 0 then
            TriggerClientEvent('ox_lib:notify', _source, {
                description = Config.Language.AnimalSold .. table.concat(monies, ", "),
                type = 'success',
                duration = 4000,
                position    = 'top'
            })
        end

        if not skipfinal then
            local entity1 = NetworkGetEntityFromNetworkId(data.netid)
            DeleteEntity(entity1)
            TriggerClientEvent("rs_hunting:finalizeReward", _source, data.entity, data.horse)
        end

        if #itemsToGive > 0 then
            local givenMsg = Config.Language.SkinnableAnimalstowed

            for _, entry in ipairs(itemsToGive) do
                local item  = entry.item
                local qty   = entry.quantity or 1
                local label = entry.label or item

                if not exports['rsg-inventory']:CanAddItem(_source, item, qty) then
                    TriggerClientEvent('ox_lib:notify', _source, {
                        description = Config.Language.FullInventory,
                        type = 'error',
                        duration = 4000,
                        position    = 'top'
                    })
                    TriggerClientEvent("rs_hunting:unlock", _source)
                    return
                end

                exports['rsg-inventory']:AddItem(_source, item, qty, nil, nil, 'hunting-skinned')
                givenMsg = givenMsg .. Config.Language.join .. label
            end

            local dict = animal.type or "satchel_textures"
            local icon = animal.texture or ""

            NotifyLeftRank(_source, Config.Language.action, givenMsg, dict, icon, 5000, "COLOR_WHITE")
        end
    end

    TriggerClientEvent("rs_hunting:unlock", _source)
end

RegisterServerEvent("rs_hunting:giveReward", giveReward)

RSGCore.Functions.CreateCallback("rs_hunting:GetPlayerJob", function(source, cb)
    local Player = RSGCore.Functions.GetPlayer(source)
    if not Player then
        cb(nil)
        return
    end
    cb(Player.PlayerData.job.name)
end)