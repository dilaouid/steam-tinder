export const showNotification = (title: string, options?: NotificationOptions) => {
    if (document.visibilityState === 'hidden') {
        if (Notification.permission === 'granted') {
            new Notification(title, options);
        } else if (Notification.permission === 'default') {
            Notification.requestPermission().then(permission => {
                if (permission === 'granted') {
                    new Notification(title, options);
                }
            });
        }
    }
};