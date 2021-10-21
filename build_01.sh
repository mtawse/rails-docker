#!/bin/bash
set -e

docker-compose run --no-deps web rails new . --force --api --database=postgresql