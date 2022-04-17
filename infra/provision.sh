#!/usr/bin/env bash

set -e

terraform plan -out=infra.out
terraform apply "infra.out"