#!/bin/bash
. /home/ec2-user/.bashrc

cd /home/ec2-user/app

lerna=$(which lerna)
$lerna bootstrap