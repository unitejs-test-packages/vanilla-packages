#!/bin/bash
set -e

node unitejs/unitejs-cli/bin/unite configure --packageName=vanilla-javascript-commonjs --title="Vanilla JavaScript CommonJS" --profile=VanillaJavaScript --moduleType=CommonJS --bundler=Webpack --outputDirectory=./apps/vanilla-javascript-commonjs
mkdir -p ./apps/vanilla-javascript-commonjs/www/test/e2e/src/examples/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/examples/*.js $_
mkdir -p ./apps/vanilla-javascript-commonjs/www/test/e2e/src/helpers/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/helpers/*.js $_
node unitejs/unitejs-cli/bin/unite package --packageName=lodash --outputDirectory=./apps/vanilla-javascript-commonjs
node unitejs/unitejs-cli/bin/unite package --packageName=moment --outputDirectory=./apps/vanilla-javascript-commonjs
node unitejs/unitejs-cli/bin/unite package --packageName=rxjs --outputDirectory=./apps/vanilla-javascript-commonjs
node unitejs/unitejs-cli/bin/unite package --packageName=underscore --outputDirectory=./apps/vanilla-javascript-commonjs

node unitejs/unitejs-cli/bin/unite configure --packageName=vanilla-javascript-systemjs --title="Vanilla JavaScript SystemJS" --profile=VanillaJavaScript --moduleType=SystemJS --bundler=SystemJSBuilder --outputDirectory=./apps/vanilla-javascript-systemjs
mkdir -p ./apps/vanilla-javascript-systemjs/www/test/e2e/src/examples/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/examples/*.js $_
mkdir -p ./apps/vanilla-javascript-systemjs/www/test/e2e/src/helpers/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/helpers/*.js $_
node unitejs/unitejs-cli/bin/unite package --packageName=lodash --outputDirectory=./apps/vanilla-javascript-systemjs
node unitejs/unitejs-cli/bin/unite package --packageName=moment --outputDirectory=./apps/vanilla-javascript-systemjs
node unitejs/unitejs-cli/bin/unite package --packageName=rxjs --outputDirectory=./apps/vanilla-javascript-systemjs
node unitejs/unitejs-cli/bin/unite package --packageName=underscore --outputDirectory=./apps/vanilla-javascript-systemjs

node unitejs/unitejs-cli/bin/unite configure --packageName=vanilla-typescript-commonjs --title="Vanilla TypeScript CommonJS" --profile=VanillaTypeScript --moduleType=CommonJS --bundler=Webpack --outputDirectory=./apps/vanilla-typescript-commonjs
mkdir -p ./apps/vanilla-typescript-commonjs/www/test/e2e/src/examples/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/examples/*.ts $_
mkdir -p ./apps/vanilla-typescript-commonjs/www/test/e2e/src/helpers/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/helpers/*.ts $_
node unitejs/unitejs-cli/bin/unite package --packageName=lodash --outputDirectory=./apps/vanilla-typescript-commonjs
node unitejs/unitejs-cli/bin/unite package --packageName=moment --outputDirectory=./apps/vanilla-typescript-commonjs
node unitejs/unitejs-cli/bin/unite package --packageName=rxjs --outputDirectory=./apps/vanilla-typescript-commonjs
node unitejs/unitejs-cli/bin/unite package --packageName=underscore --outputDirectory=./apps/vanilla-typescript-commonjs

node unitejs/unitejs-cli/bin/unite configure --packageName=vanilla-typescript-systemjs --title="Vanilla TypeScript SystemJS" --profile=VanillaTypeScript --moduleType=SystemJS --bundler=SystemJSBuilder --outputDirectory=./apps/vanilla-typescript-systemjs
mkdir -p ./apps/vanilla-typescript-systemjs/www/test/e2e/src/examples/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/examples/*.ts $_
mkdir -p ./apps/vanilla-typescript-systemjs/www/test/e2e/src/helpers/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/helpers/*.ts $_
node unitejs/unitejs-cli/bin/unite package --packageName=lodash --outputDirectory=./apps/vanilla-typescript-systemjs
node unitejs/unitejs-cli/bin/unite package --packageName=moment --outputDirectory=./apps/vanilla-typescript-systemjs
node unitejs/unitejs-cli/bin/unite package --packageName=rxjs --outputDirectory=./apps/vanilla-typescript-systemjs
node unitejs/unitejs-cli/bin/unite package --packageName=underscore --outputDirectory=./apps/vanilla-typescript-systemjs
