#!/bin/sh

cd docker
cp example.env .env
mv demo-medium-*.sql demo-medium.sql

if [ "$(uname)" == "Darwin" ]; then
    sed -i '' 's/DROP DATABASE demo;/DROP DATABASE IF EXISTS demo;/g' demo-medium.sql
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    sed -i 's/DROP DATABASE demo;/DROP DATABASE IF EXISTS demo;/g' demo-medium.sql
fi

docker-compose up --build -d