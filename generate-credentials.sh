#!/usr/bin/env bash

set -e

if [[ -d credentials ]]; then
    echo "credentials already generated... skipping..."
else
  mkdir credentials
  uuidgen > credentials/mysql-root-user-password.txt
  uuidgen > credentials/mysql-user-password.txt
fi