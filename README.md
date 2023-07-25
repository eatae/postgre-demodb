# postgre-demodb
PostgreSQL demo database in a docker container

1. Скачать архив базы данных: <br>
   https://edu.postgrespro.ru/demo-medium.zip
2. Распаковать архив в директорию ./docker
3. Перейти в директорию ./docker: <br>
   ```cd ./docker```
5. В директории ./docker выполнить следующие команды: <br>
```cp example.env .env```<br>
```mv demo-medium-*.sql demo-medium.sql```<br>
```docker-compose up --build -d```

### connection: <br>
port: 54321 <br>
user: postgres <br>
password: 2222 <br>
