#!/bin/bash
#-*- utf-8 -*-

#Created by : yanghua
#Date       : 16/10/2013
#Desc       : a script to install FixedAssetManager_Server

cd ~

rm -R FixedAssetManager_Server

git clone git://github.com/yanghua/FixedAssetManager_Server.git

cd FixedAssetManager_Server

npm install

#handle node shebung


#generate assets for static resource
make build

pm2 stop all
pm2 start app.js -x -f