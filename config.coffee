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
    port: 80
    noPushState: true
    stripSlashes: true
  plugins:
    terser:
      mangle: true
      compress: true
    postcss:
      processors: [
        req('rucksack-css', { autoprefixer: true })
        req('postcss-import')
        req('precss')
        req('immutable-css')
        req('postcss-hocus')
        req('pixrem')
        req('postcss-insert')
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
