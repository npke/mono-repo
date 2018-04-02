#!/bin/bash
npm=$(which npm)
$npm install
./node_modules/.bin/lerna bootstrap