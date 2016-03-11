# The code at this point is stable.
# Time to add the nginx discovery modules
#

_DEPLOYMENT_ID="99999101AD" && echo "The ENV _DEPLOYMENT_ID value is $_DEPLOYMENT_ID" &&
_USR_BRANCH="pascal" && echo "The ENV _USR_BRANCH value is $_USR_BRANCH" &&
_GIT_CLONE_URL="https://github.com/pascalandy/gst-maria-dock_fork-mewm.git" && echo "The ENV _GIT_CLONE_URL value is $_GIT_CLONE_URL" &&
_SHA1="368f4022762454390222969fe9ad939caa6b2ff1" && echo "The ENV _SHA1 value is $_SHA1" &&
cd /var/www/ && echo "cd into '$ /var/www/'" &&
sudo mkdir $_DEPLOYMENT_ID && echo "Folder $_DEPLOYMENT_ID created." &&
sudo chmod 777 -R /var/www/$_DEPLOYMENT_ID &&
cd $_DEPLOYMENT_ID && echo "cd into '$ /var/www/$_DEPLOYMENT_ID" &&
sudo git clone -b $_USR_BRANCH $_GIT_CLONE_URL tmp &&
echo "# BYPASSING sudo git reset --hard $_SHA1" &&
sudo cp -r tmp/$_DEPLOYMENT_ID $_DEPLOYMENT_ID &&
sudo rm -r tmp/ &&
sudo mv $_DEPLOYMENT_ID ghost &&
sudo chmod 777 -R /var/www/$_DEPLOYMENT_ID/ghost/ &&
cd ghost &&
ls -la && echo "Here are the file we just cloned for $_DEPLOYMENT_ID" &&
echo "Ready for deployment!" &&
docker-compose up -d
