#!/bin/bash
set -e

node unitejs/cli/bin/unite configure --packageName=vanilla-javascript --title="Vanilla JavaScript" --profile=VanillaJavaScript --outputDirectory=./apps/vanilla-javascript
# node unitejs/cli/bin/unite package --packageName=moment --outputDirectory=./apps/vanilla-javascript

node unitejs/cli/bin/unite configure --packageName=vanilla-typescript-commonjs --title="Vanilla TypeScript CommonJS" --profile=VanillaTypeScript --moduleType=CommonJS --bundler=Webpack --outputDirectory=./apps/vanilla-typescript-commonjs
# node unitejs/cli/bin/unite package --packageName=moment --outputDirectory=./apps/vanilla-typescript-commonjs

node unitejs/cli/bin/unite configure --packageName=vanilla-typescript-systemjs --title="Vanilla TypeScript SystemJS" --profile=VanillaTypeScript --moduleType=SystemJS --bundler=SystemJSBuilder --outputDirectory=./apps/vanilla-typescript-systemjs
# node unitejs/cli/bin/unite package --packageName=moment --outputDirectory=./apps/vanilla-typescript-systemjs

