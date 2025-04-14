#!/bin/bash

sudo docker run -d \
  --name mysql_stg_metrics \
  -e MYSQL_ROOT_PASSWORD=ejqbzVr8LhQjFn8 \
  -e MYSQL_DATABASE=stg-metrics-tije \
  -e MYSQL_USER=XXXXXXXXXXXXXX \
  -e MYSQL_PASSWORD=XXXXXXXXXXXX \
  -p 3306:3306 \
  -v $(pwd)/mysql_data:/var/lib/mysql \
  mysql:8.0 \
  --bind-address=0.0.0.0

