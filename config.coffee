exports.config =
  files:
    javascripts:
      joinTo:
        'app.js': /^app/
        'vendor.js': /^(?!app)/
    stylesheets:
      joinTo:
        'app.css'
  server:
    hostname: '0.0.0.0'
    port: 80
    noPushState: true
    stripSlashes: true
  npm:
    enabled: true
    styles:
      tachyons: ['css/tachyons.css']
  plugins:
    pug:
      pretty: false
    riot:
      extension: 'riot'
      pattern: /\.riot$/
      template: 'pug'
