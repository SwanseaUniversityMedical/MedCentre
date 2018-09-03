echo '--------------'
echo '-  MedCentre -'
echo '--------------'
echo ''
echo '==> Stopping MedCentre service'

docker-compose -f ~/MedCentre/docker/docker-compose.yml stop
