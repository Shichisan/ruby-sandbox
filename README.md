# README

This application build on docker, so you can input some docker command to build

```
move root directory of this project
$ docker-compose build

after build completed
$ docker-compose run webapp bin/rake db:create

after create database in local
$ docker-compose run webapp bin/rake db:migrate

after migration
$ docker-compose up -d
```

You can access http://localhost:3000/photos
