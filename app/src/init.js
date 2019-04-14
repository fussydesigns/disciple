'use strict';

function requirements(tool) {
  require('riot');
}

function templates() {
  require('view/app');
  require('view/common/nav');
  require('view/common/util');
  require('view/page/fibonacci');
}

function plugins(load) {
  var route = require('riot-route/tag');
  var parents = require('riot-parents')
  load.mixin(parents);
}

function start(it) {
  templates();
  plugins(it);
}

function init(app, ui, defs) {
  start(ui);
  let options = {
    app: defs.name,
  };
  ui.mount(app, options);
}

module.exports = init;
