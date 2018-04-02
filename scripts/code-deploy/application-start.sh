#!/bin/bash
. /home/ec2-user/.bashrc

cd /home/ec2-user/app

pm2=$(which pm2)
cd packages/api && $pm2 start server.js
cd packages/cms && $pm2 start server.js