#!/bin/sh -ex
VERSION=v1.53.1
wget https://downloads.rclone.org/$VERSION/rclone-$VERSION-linux-amd64.zip
unzip rclone-$VERSION-linux-amd64.zip
mv rclone-$VERSION-linux-amd64/rclone .
rm -rf rclone-$VERSION-linux-amd64
