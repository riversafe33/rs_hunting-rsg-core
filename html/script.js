window.addEventListener('message', (event) => {
    const data = event.data;
    if (!data || data.action !== 'huntingNotify') return;
    addNotification(data);
});

function addNotification(data) {
    const container = document.getElementById('notifications');

    const notif = document.createElement('div');
    notif.className = 'notification';

    const icon = document.createElement('img');
    icon.className = 'notification-icon';
    icon.src = `img/${data.icon}.png`;
    icon.onerror = () => icon.remove();

    const textWrap = document.createElement('div');
    textWrap.className = 'notification-text';

    const title = document.createElement('div');
    title.className = 'notification-title';
    title.textContent = data.title || '';

    const body = document.createElement('div');
    body.className = 'notification-body';
    body.textContent = data.text || '';

    textWrap.appendChild(title);
    textWrap.appendChild(body);

    notif.appendChild(icon);
    notif.appendChild(textWrap);
    container.appendChild(notif);

    requestAnimationFrame(() => {
        requestAnimationFrame(() => notif.classList.add('show'));
    });

    const duration = data.duration || 5000;
    setTimeout(() => {
        notif.classList.remove('show');
        notif.classList.add('hide');
        notif.addEventListener('transitionend', () => notif.remove(), { once: true });
    }, duration);
}