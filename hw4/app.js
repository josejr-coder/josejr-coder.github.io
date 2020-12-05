if (navigator.serviceWorker) {
 navigator.serviceWorker.register("./service-worker.js", {scope: "./"})
 .then(function (registration) {
 // Registration of service worker ok
 console.log("Registration of service worker successful with scope: ",
registration.scope);
 }).catch(function(err) {
 // Registration of service worker failed
 console.log("Registration of service worker failed with error: ", err);
 })
} else {
 console.log("Service Worker is not supported by this browser");
}

//push event
self.addEventListener('push', function(event) {
  if (event.data) {
    console.log('This push event has data: ', event.data.text());
  } else {
    console.log('This push event has no data.');
  }
});
//app
const webpush = require('web-push');
const vapidKeys = webpush.generateVAPIDKeys();

const options = {
    TTL: 24*60*60, //TTL= time notification will be queued in the push service
    vapidDetails: {
        subjec : 'email@example.com',
        publicKey: '',
        privateKey: ''
    }
}
const data = {
    title: 'Update',
    body: 'Notification sent by server'
}

webpush.sendNotification(subscription, data, options)
