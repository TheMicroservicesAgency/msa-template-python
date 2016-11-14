
# msa-template-python

Example of a microservice written in Python, with the [Flask](flask.pocoo.org/docs/latest/quickstart/) framework.

## Usage

To build the microservice Docker image, execute the build script :

```
./build.sh
```

Once the container is created, executed it with the following command :

```
docker run -ti -p 8080:80 msa-template-python:1.0.0
```

## Endpoints

- [/hello-world](/hello-world) : returns "Hello, World!"

## Standard endpoints

- [/version](/version) : returns the version number

- [/name](/name) : returns the name

- [/readme](/readme) : returns the readme (this file)

- [/swagger/swagger.json](/swagger/swagger.json) : returns the swagger api documentation

- [/swagger/#/](/swagger/#/) : returns swagger-ui displaying the api documentation

- [/nginx/stats.json](/nginx/stats.json) : returns stats about Nginx

- [/nginx/dashboard](/nginx/dashboard) : returns a dashboard displaying the stats from Nginx

## About

A project by the [Microservices Agency](http://microservices.agency).
