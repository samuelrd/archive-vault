# Archive Vault

### Host
You will need to setup a local hosts entry for the following:
```
127.0.0.1 archive-vault.local
```

#### Automated Install
```
bash ./bin/init.sh
```
#### Manual Install

This will run the following commands:
```
# Copy the example env to env
cp htdocs/.env.example htdocs/.env
```

```
# Install Composer Dependencies
docker-compose run --rm php composer install
```

```
# Generate APP Key
docker-compose run --rm php php artisan key:generate
```

```
# Install Frontend Dependencies
docker-compose run --rm node npm install
```

```
# Start All Enviroments
docker-compose up -d
```

### Development
If this project has been setup before the following command can be run to get the enviroments up and running and start hot module reloading on the frontend:

```
docker-compose up -d
```

To view the logs of the node / vite building during development run:

```
docker logs --follow laravel-inertia-boilerplate_node_1
```

To stop all containers when finished:

```
docker-compose down
```


### Docker Information
This docker setup consists of the following:
- web - nginx:latest
- php - bitnami:php-fpm-8.1
- mailhog - mailhog/mailhog
- db - mysql:5.7
- node - In the docker folder , docker/node-16.6.0

### Frontend

#### Vite
Laravel now ships with [vite](https://laravel.com/docs/10.x/vite) , which is a modern frontend build tool that provides an extremely fast development environment and bundles your code for production.

After starting your docker containers this will automatically run. The logs for the container when its compiling etc can be acessed via the following command:

```
docker logs --follow laravel-inertia-boilerplate_node_1
```

The app when being developed will be able to be accessed via your site url e.g http://laravel-inertia-boilerplate.local and will have hot module reloading , whenever javascript and css/scss files change.

#### Inertia
This project is integrated with [inertia](https://inertiajs.com/) which allows you to create fully client-side rendered, single-page apps, without the complexity that comes with modern SPAs. We have decided to use this with vue.js but this can be integrated with any frontend e.g react , angular.

In effect inertia is a glue between laravel and vue.js


### Mail
Locally this installation will use mailhog if correctly configured which will trap all mail on the application to a mailbox which can be accessed via [http://localhost:8025/](http://localhost:8025/)

### Dependency / Package Documentation
##### Backend

* Laravel ^10.0
* Inertia Laravel - ^0.6.8
* Ziggy - ^1.0

##### Frontend
* Vue - ^3.2.41
* Inertia Vue3 - ^1.0.0
* Vite - ^4.0.0


