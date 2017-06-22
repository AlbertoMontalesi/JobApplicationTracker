
if (navigator.serviceWorker) {
  navigator.serviceWorker.register('/serviceworker.js', { scope: './' })
    .then(function(reg) {
      console.log('[Page] Service worker registered!');
    });
}

// app/assets/javascripts/application.js

// ...
//= require serviceworker-companion