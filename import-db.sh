#!/usr/bin/env sh
source .env
docker exec -it php-$PROJECT_NAME sh -c "bin/console d:d:i db.sql && bin/console d:s:v"
