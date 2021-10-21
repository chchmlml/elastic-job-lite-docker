#!/bin/bash

echo ">>> Start build ..."

docker build -t chchmlml/elastic-job-lite-console .
docker push chchmlml/elastic-job-lite-console:latest