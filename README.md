# Docker MariaDB-based image for Moodle applications

## Description

Docker MariaDB-based image for Moodle applications.
Based on [docker-ubuntu-mariadb](https://github.com/demmonico/docker-ubuntu-mariadb) image (v2.0). 
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

Docker Compose:

```sh
...
build: local_path_to_dockerfile
  
volumes:
  # db tables
  - ./db/data:/var/lib/mysql
  
  # optional custom configs
  - ./mariadb.cnf:/etc/mysql/my.cnf
  
env_file:
  # provides values for ENV variables VIRTUAL_HOST, PROJECT, HOST_USER_NAME, HOST_USER_ID
  - host.env
```


## Change log

See the [CHANGELOG](CHANGELOG.md) file for change logs.
