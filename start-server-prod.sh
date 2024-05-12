#!/usr/bin/env sh

set -e

./generate-credentials.sh

docker compose --env-file .env.prod up -d