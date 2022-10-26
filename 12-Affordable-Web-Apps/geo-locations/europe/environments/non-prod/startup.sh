#! /bin/bash

 apt update
 apt -y install apache2
 cat <<EOF > /var/www/html/index.html
 <!doctype html><html><body><h1>Hello World!</h1></body></html>