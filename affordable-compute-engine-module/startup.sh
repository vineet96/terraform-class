#! /bin/bash
 sudo apt install lsb-release
 curl -fsSL https://packages.redis.io/gpg | sudo gpg --dearmor -o /usr/share/keyrings/redis-archive-keyring.gpg
 sudo apt-get update
 sudo apt-get -y install redis

 apt update
 apt -y install apache2
 cat <<EOF > /var/www/html/index.html
 <!doctype html><html><body><h1>Hello World!</h1></body></html>