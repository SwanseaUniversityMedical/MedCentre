#!/bin/bash

echo '--------------'
echo '-  MedCentre -'
echo '--------------'
echo ''

# stop all the running services
echo '==> Stopping any running MedGATE Cneter services'
docker-compose -f ~/MedCentre/docker/docker-compose.yml stop

echo '==> Pulling latest image for MedGATE Cneter'
#remove medcentre container and pull the latest medcentre image 
if [ "$(docker ps -aq -f name='medcentre')" ]; then
    # remove existing medcentre container
    docker rm -f medcentre
    # pull the latest medcentre image
    docker pull swanseauniversitymedical/medcentre-dev
fi

echo '==> Building Docker Containers'
docker-compose -f ~/MedCentre/docker/docker-compose.yml up --build -d

clear
echo '==> Running Docker Containers'
docker ps
