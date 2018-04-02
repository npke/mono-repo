#!/bin/bash
. /home/ec2-user/.bashrc

npm=$(which npm)
$npm install
./node_modules/.bin/lerna bootstrap