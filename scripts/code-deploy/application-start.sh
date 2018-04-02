#!/bin/bash
. /home/ec2-user/.bashrc

cd /home/ec2-user/app

NPM=$(which npm)
cd /var/app/packages/api && $NPM start
cd /var/app/packages/cms && $NPM start