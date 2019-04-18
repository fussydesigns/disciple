req = (plugin, opts) -> require(plugin)(opts)

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
    port: 8080
    noPushState: true
    stripSlashes: true
  plugins:
    gzip:
      paths:
        javascript: '.'
        stylesheet: '.'
    postcss:
      processors: [
        req('rucksack-css', { autoprefixer: true })
        req('postcss-import')
        req('immutable-css', { strict: false })
        req('precss')
        req('pixrem')
        req('postcss-insert')
        req('postcss-hocus')
        req('postcss-uncss', { html: ['public/index.html'], ignore: [] })
        req('perfectionist', { indentSize: 2 })
        # req('cssnano')
      ]
    pug:
      pretty: false
    riot:
      extension: 'riot'
      pattern: /\.riot$/
      template: 'pug'
    signature:
      file: 'app.signature'
    terser:
      mangle: true
      compress: true
