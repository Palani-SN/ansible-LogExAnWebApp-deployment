#!/bin/sh
chmod +x -v entrypoint.sh
chmod +x -v LogExAnWebApp/install.sh
docker pull alpine:latest
docker build -t alpine-sshd .
docker run -d -p 22:22 -p 5000:5000 --name alpine-openssh alpine-sshd
