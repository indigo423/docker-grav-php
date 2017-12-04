[![Build Status](http://circleci-badges-max.herokuapp.com/img/indigo423/docker-grav-php?token=259039986729cce2f1a8e49b81fa759eaff4d837)](https://circleci.com/gh/indigo423/docker-grav-php) ![CI](https://circleci.com/gh/indigo423/docker-grav-php.png?circle-token=259039986729cce2f1a8e49b81fa759eaff4d837)

# Grav Flatfile CMS in Docker

Download latest Grav version with

```
mkdir myGravSite
cd myGravSite

curl -L https://github.com/getgrav/grav/releases/download/1.3.8/grav-v1.3.8.zip -o grav.zip
unzip grav.zip
```

The grav directory is mounted into the NGINX and PHP-FPM container with `./grav:/grav`.
Ensure you adjust the folder location in case you have your Grav site somewhere else in the example `docker-compose.yml` file.

Adjust the server name in `site.conf` which resolves to your web service:

```
server_name myhost;
```

Spin up the container with

```
docker-compose up -d
```

Go to http://myhost:8080 and gl & hf
