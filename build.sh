#!/bin/sh -ex
VERSION=v1.63.0
git clone https://github.com/rclone/rclone.git
(
    cd rclone &&
    git checkout $VERSION &&
    go env -w GOPROXY=https://goproxy.cn,direct &&
    make GOTAGS=netcgo
)
mv rclone rclone.src
mv rclone.src/rclone .
rm -rf rclone.src
