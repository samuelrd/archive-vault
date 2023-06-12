# First setup for project
# bash ./bin/init.sh

echo ''
echo 'Copying .env.example to .env'
echo ''
cp htdocs/.env.example htdocs/.env

echo ''
echo 'Installing PHP dependencies'
echo ''
docker-compose run --rm php composer install

echo ''
echo 'Generating an APP_KEY'
echo ''
docker-compose run --rm php php artisan key:generate

echo ''
echo 'Migrating the central database'
echo ''
docker-compose run --rm php php artisan migrate --seed

echo ''
echo 'Installing the front-end dependencies'
echo ''
docker-compose run --rm node npm install
