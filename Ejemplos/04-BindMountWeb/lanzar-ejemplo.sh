#/bin/bash

git clone https://github.com/ualmtorres/webEstaticaBasica.git
docker run -d \
    -p 80:80 \
    --name my-web \
    -v $(pwd)/webEstaticaBasica:/usr/local/apache2/htdocs \
    httpd
