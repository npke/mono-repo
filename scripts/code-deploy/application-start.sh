#!/bin/bash
. /home/ec2-user/.bashrc

cd /home/ec2-user/app

NPM=$(which npm)
cd packages/api && $NPM start
cd packages/cms && $NPM start