# Docker MariaDB-based image for Moodle applications

## Description

Docker MariaDB-based image for Moodle applications.
Based on [docker-ubuntu-mariadb](https://github.com/demmonico/docker-ubuntu-mariadb) image (v3.3). 
Was developed for using with [Docker Manager](https://github.com/demmonico/docker-manager/). 
But could be used separately. 
You could pull image from here and build locally.


### Installs

- see [docker-ubuntu-mariadb](https://github.com/demmonico/docker-ubuntu-mariadb)
- additional config for Moodle database


### Build arguments

- see [docker-ubuntu-mariadb](https://github.com/demmonico/docker-ubuntu-mariadb)


### Environment variables

- see [docker-ubuntu-mariadb](https://github.com/demmonico/docker-ubuntu-mariadb)


## Usage

### Docker Compose

```sh
...
db:
  build: local_path_to_dockerfile
  
  environment:
    # optional
    - DMC_DB_NAME=test_db
    
  volumes:
    # optional custom configs
    - ./mariadb.cnf:/etc/mysql/my.cnf
...
```


## Change log

See the [CHANGELOG](CHANGELOG.md) file for change logs.
