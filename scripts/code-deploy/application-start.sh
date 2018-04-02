#!/bin/bash
. /home/ec2-user/.bashrc

NPM=$(which npm)
cd /var/app/packages/api && $NPM start
cd /var/app/packages/cms && $NPM start