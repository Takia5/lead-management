// src/echo.js
import Echo from 'laravel-echo';
import Pusher from 'pusher-js';
import { toast } from 'react-toastify';

// Configure Laravel Echo
window.Pusher = Pusher;

window.Echo = new Echo({
    broadcaster: 'pusher',
    key: process.env.REACT_APP_PUSHER_APP_KEY, // Add to your .env file
    cluster: process.env.REACT_APP_PUSHER_APP_CLUSTER,
    forceTLS: true,
});

// Listen for notifications (assuming user is authenticated and has a userId)
const userId = localStorage.getItem('userId'); // Assuming userId is stored in localStorage

window.Echo.channel('follow-ups')
    .listen('Illuminate\\Notifications\\Events\\BroadcastNotificationCreated', (event) => {
        if (event.message) {
            toast.error(event.message, {
                position: toast.POSITION.TOP_RIGHT,
                autoClose: 5000,
            });
        }
    });
