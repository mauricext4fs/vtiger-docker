#!/bin/sh
git clone https://code.vtiger.com/vtiger/vtigercrm.git
#sudo chmod ugo+rw -fR vtigercrm/
#sudo chown 923 -fR vtigercrm/
. ./.env
docker-compose up -d
echo ""
echo "Vtiger is now running on https://$VIRTUAL_HOST"
echo ""
echo "Enjoy!"
echo ""
