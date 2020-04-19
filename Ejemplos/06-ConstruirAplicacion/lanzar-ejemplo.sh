#/bin/bash

git clone https://github.com/ualmtorres/webEstaticaBasica.git
cd webEstaticaBasica
docker build -t ualmtorres/web-estatica-basica:v0 .
docker run -d \
    -p 80:80 \
    --name webEstaticaBasica \
    -v $(pwd):/var/www/html \
    ualmtorres/web-estatica-basica:v0
