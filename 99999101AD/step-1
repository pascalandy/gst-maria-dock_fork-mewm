_DEPLOYMENT_ID="99999101AD" &&
echo _DEPLOYMENT_ID &&
_GitCloneUrl="https://github.com/pascalandy/gst-maria-dock_fork-mewm.git" &&
echo _GitCloneUrl &&
cd /var/www/ &&
echo Creating the directory for $_DEPLOYMENT_ID &&
sudo mkdir $_DEPLOYMENT_ID &&
sudo chmod 777 -R /var/www/* &&
cd $_DEPLOYMENT_ID &&
echo $PATH
echo Cloning the configs (branch $_DEPLOYMENT_ID) &&
sudo git clone -b $_DEPLOYMENT_ID $_GitCloneUrl ghost &&
cd ghost &&
echo Display the file we just cloned
la -la &&
docker-compose up -d
