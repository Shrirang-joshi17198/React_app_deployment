#!/bin/bash
docker login -u shrirangjoshisj -p dckr_pat_5mGgK9asikUFn2chw-MYaY7WIlE
docker build -t react_app_img:v1 .
docker-compose down || true
docker-compose up -d
