cd ../.. &&
sudo rm -r 99999101AD/ &&
ls -la

docker rm `docker ps --no-trunc -aq` &&
docker rmi -f $(docker images -q)
