#!/bin/bash

# Aturem i eliminem contenidors previs si existeixen
docker rm -f ep2-web ep2-db ep2-cloud9 2>/dev/null

# Contenidor MariaDB
docker run -d --name ep2-db -e MYSQL_ROOT_PASSWORD=rootpass -e MYSQL_DATABASE=ep2db -p 3306:3306 mariadb

# Contenidor Web (Apache + PHP)
docker run -d --name ep2-web --link ep2-db:db -p 8080:80 username/ep2-web-php

# Contenidor Cloud9 (IDE al navegador)
docker run -d --name ep2-cloud9 -p 8181:8181 -e C9_USER=student -e C9_PASSWORD=studentpass linuxserver/code-server
