#!/usr/bin/env bash

set -e

if [[ -d credentials ]]; then
    echo "credentials already generated... skipping..."
else
  mkdir credentials
  uuidgen > credentials/db-root-user-password.txt
  uuidgen > credentials/db-user-password.txt
fi