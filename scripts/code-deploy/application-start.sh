#!/bin/bash
NPM=$(which npm)
cd /var/app/packages/api && $NPM start
cd /var/app/packages/cms && $NPM start