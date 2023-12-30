#!/bin/bash
if [ ! -f vendor/autoload.php ]; then
  echo "Installing dependencies"
  composer install --no-progress --no-interaction
fi

if [ ! -f .env ]; then
  echo "Copying .env.example to .env"
  cp .env.example .env
fi

php-fpm -D
nginx -g "daemon off;"




