#/bin/bash

rm init.sql
docker stop my-mysql
docker rm my-mysql
rm -rf data
