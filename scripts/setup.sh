sudo apt-get -qq update -y

curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get -qq install nodejs -y
sudo apt-get install nginx -y
# sudo apt-get -qq install npm -y

curl -L https://omnitruck.chef.io/install.sh | sudo bash

sudo npm i -g ghost-cli
sudo mkdir -p /var/www/ghost
sudo chown ubuntu:ubuntu /var/www/ghost
sudo chmod 775 /var/www/ghost
ghost install -d /var/www/ghost --no-prompt --ip '0.0.0.0' --db sqlite3 --url http://localhost --port 2368 --db-path ./content/data/ghost.db

echo "setup.sh DONE"