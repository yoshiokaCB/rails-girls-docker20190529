# Rails Development Base


## Description

Build Rails + Postgresql development environment using Docker Compose

## Usage

```
$ git clone https://github.com/yoshiokaCB/rails-development-base.git ./[app-name]
$ cd [app-name]
$ docker-compose build
$ docker-compose run web rails new . --force -d postgresql
```

