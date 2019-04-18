# Disciple 0.0.8

Starter web app template.

## Installation

This is not meant to be installed into a project but downloaded directly into a new directory, and started from there.

## Usage

Once this has been downloaded, navigate to the path in your terminal and `npm install`, then `npm start`. It will load a local server broadcast on your current IP port `8080`.

Configurations can be changed within the file `config.coffee`.

## Technology

These tools, together, provide a fundamental basis for building modern web apps:

- [Riot](https://riot.js.org/)
- [Brunch](https://brunch.io)
- [PostCSS](https://postcss.org/)
- [Tachyons](http://tachyons.io/)

It is recommended to read up on each of these 

Brunch builds the project and runs a local server.

- `brunch-signature` creates a signature file (`public/app.signature`) that can be used for cachebusting
- `gzip-brunch` creates a `.gz` version of all files within the `public` folder
- `terser-brunch` compresses all JavaScript files
- `pugjs-brunch` lets developers use `.pug` template files

Riot allows a developer to compose reusable modular systems that can interoperate nicely.

- [`riot-parents`](https://www.npmjs.com/package/riot-parents) provides `{ this.parents(x) }` syntax for accessing parent variables
- [`riot-route`](https://www.npmjs.com/package/riot-route) provides `<Router><Route path='/'>...</Route></Router>` tags

PostCSS lets us handle complex meta functions for stylesheets. Multiple have been installed and added to the config file for various reasons.

- [`perfectionist`](https://www.npmjs.com/package/perfectionist) pretty-prints stylesheets
- [`cssnano`](https://www.npmjs.com/package/cssnano) compresses stylesheets
- [`pixrem`](https://www.npmjs.com/package/pixrem) provides a `px` fallback for `rem` values
- [`rucksack-css`](https://www.npmjs.com/package/rucksack-css) provides additional classes and functions
- [`precss`](https://www.npmjs.com/package/precss) provides a bunch of sass-like utilities such as $variables and & nesting
- [`immutable-css`](https://www.npmjs.com/package/immutable-css) provides warnings when we overwrite base styles, can invoke an error
- [`postcss-insert`](https://www.npmjs.com/package/postcss-insert) provides the `@insert` syntax to inject classes into arbitrary selectors
- [`postcss-import`](https://www.npmjs.com/package/postcss-import) lets us `@import` other files and dependencies
- [`postcss-hocus`](https://www.npmjs.com/package/postcss-hocus) provides the `:hocus` and `:pocus` pseudoelements for us to use
- [`postcss-uncss`](https://www.npmjs.com/package/postcss-uncss) (with `uncss`) removes all unused 

Tachyons provides utility classes to our CSS. This is imported into the main `app.css` file and can be replaced.
