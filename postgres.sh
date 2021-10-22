#!/bin/bash

docker exec -it rails-docker_db_1 psql -d app_development -U postgres