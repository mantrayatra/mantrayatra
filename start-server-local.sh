#!/usr/bin/env bash

set -e

./generate-credentials.sh

docker compose --env-file .env.dev up