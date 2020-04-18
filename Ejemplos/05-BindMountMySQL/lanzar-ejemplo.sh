#/bin/bash

curl https://gist.githubusercontent.com/ualmtorres/eb328b653fcc5964f976b22c320dc10f/raw/448b00c44d7102d66077a393dad555585862f923/init.sql -o init.sql
docker run -d \
    -p 3306:3306 \
    --name my-mysql \
    -v $(pwd)/init.sql:/docker-entrypoint-initdb.d/init.sql \
    -v $(pwd)/data:/var/lib/mysql \
    -e MYSQL_ROOT_PASSWORD=secret \
    mysql
