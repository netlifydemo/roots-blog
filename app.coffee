path         = require 'path'
axis         = require 'axis'
rupture      = require 'rupture'
autoprefixer = require 'autoprefixer-stylus'
js_pipeline  = require 'js-pipeline'
css_pipeline = require 'css-pipeline'
jeet         = require 'jeet'
posts        = require 'roots-posts'

module.exports =
  ignores: ['readme.md', '**/layout.*', '**/_*', '.gitignore', 'ship.*conf']

  extensions: [
    js_pipeline(files: ['assets/vendor/**', 'assets/js/*.coffee']),
    css_pipeline(files: 'assets/css/*.styl'),
    posts(folder: 'posts', layout: 'post')
  ]

  stylus:
    use: [axis(), rupture(), jeet(), autoprefixer()]
    sourcemap: true

  'coffee-script':
    sourcemap: true

  jade:
    pretty: true
