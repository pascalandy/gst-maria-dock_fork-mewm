_DEPLOYMENT_ID="99999101AD" && echo _DEPLOYMENT_ID &&
_USR_BRANCH="pascal" && echo _USR_BRANCH &&
_GIT_CLONE_URL="https://github.com/pascalandy/gst-maria-dock_fork-mewm.git" && echo _GIT_CLONE_URL &&
cd /var/www/ && echo Creating the directory for $_DEPLOYMENT_ID &&
sudo mkdir $_DEPLOYMENT_ID &&
sudo chmod 777 -R /var/www/ &&
cd $_DEPLOYMENT_ID &&
echo "Cloning the configs from branch $_USR_BRANCH" &&
sudo git clone -b $_USR_BRANCH $_GIT_CLONE_URL ghost &&
cd ghost && pwd && echo Here are the file we just cloned && ls -la &&
docker-compose up -d

# New config as our git repo containes ALL our configs
_DEPLOYMENT_ID="99999101AD" &&
_USR_BRANCH="pascal" &&
_GIT_CLONE_URL="https://github.com/pascalandy/gst-maria-dock_fork-mewm.git" &&
echo "The ENV _DEPLOYMENT_ID value is $_DEPLOYMENT_ID" &&
echo "The ENV _USR_BRANCH value is $_USR_BRANCH" &&
echo "The ENV _GIT_CLONE_URL value is $_GIT_CLONE_URL" &&
cd /var/www/ && echo "cd into '$ /var/www/'" &&
sudo mkdir $_DEPLOYMENT_ID && echo "Folder $_DEPLOYMENT_ID created." &&
sudo chmod 777 -R /var/www/$_DEPLOYMENT_ID &&
cd $_DEPLOYMENT_ID && echo "cd into '$ /var/www/$_DEPLOYMENT_ID" &&
sudo git clone -b $_USR_BRANCH $_GIT_CLONE_URL tmp &&
sudo cp -r tmp/$_DEPLOYMENT_ID $_DEPLOYMENT_ID &&
sudo rm -r tmp/ &&
sudo mv $_DEPLOYMENT_ID ghost &&
sudo chmod 777 -R /var/www/$_DEPLOYMENT_ID/ghost/ &&
cd ghost &&
ls -la && echo "Here are the file we just cloned for $_DEPLOYMENT_ID" &&
echo "Ready for deployment!"
docker-compose up -d
