#!/bin/bash

if [ "$1" == "dev" ]; then
    docker login -u shrirangjoshisj -p dckr_pat_5mGgK9asikUFn2chw-MYaY7WIlE
    ./build.sh
    docker tag react_app_img:v1 shrirangjoshisj/dev:react_app_img
    docker push shrirangjoshisj/dev:react_app_img
    echo "Image successfully pushed to the 'dev' repository."

elif [ "$1" == "prod" ]; then
    docker login -u shrirangjoshisj -p dckr_pat_5mGgK9asikUFn2chw-MYaY7WIlE
    ./build.sh
    docker tag react_app_img:v1 shrirangjoshisj/prod:react_app_img
    docker push shrirangjoshisj/prod:react_app_img
    echo "Image successfully pushed to the 'prod' repository."

else
    echo "Invalid argument. Use 'dev' or 'prod'."
fi
