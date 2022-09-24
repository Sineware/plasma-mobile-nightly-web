#!/usr/bin/env bash
USER=swadmin
HOST=192.168.11.88
PORT=22
DIR=/storagepool/tmp/http/prolinux/plasma-mobile-nightly

rsync -e "ssh -p ${PORT}" -avz --exclude ".git" --exclude "node_modules" --exclude "workdir" . ${USER}@${HOST}:${DIR}