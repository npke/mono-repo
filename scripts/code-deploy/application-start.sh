#!/bin/bash
. /home/ec2-user/.bashrc

cd /home/ec2-user/app

pm2=$(which pm2)
cd /home/ec2-user/app/packages/api && $pm2 restart server.js
cd /home/ec2-user/app/packages/cms && $pm2 restart server.js