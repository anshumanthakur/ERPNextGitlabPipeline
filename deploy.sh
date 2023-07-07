#!/bin/bash

set -x

sudo sed -i 's/#$nrconf{restart} = '"'"'i'"'"';/$nrconf{restart} = '"'"'a'"'"';/g' /etc/needrestart/needrestart.conf
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install git -y
sudo apt-get install python3-dev -y
sudo apt-get install python3-setuptools python3-pip -y
sudo apt-get install virtualenv -y
sudo apt install python3.10-venv -y
sudo apt-get install software-properties-common -y
sudo apt install mariadb-server -y
sudo apt install expect -y
sudo chmod +x expect.sh
sudo ./expect.sh
sudo apt-get install libmysqlclient-dev -y
sudo chmod +x edit_conf.sh
sudo ./edit_conf.sh
sudo service mysql restart
sudo apt-get install redis-server -y
sudo apt install curl -y
chmod +x source_profile.sh
source source_profile.sh
nvm install 20.3.1
sudo apt-get install npm -y
sudo npm install -g yarn
sudo apt-get install xvfb libfontconfig wkhtmltopdf -y
sudo -H pip3 install frappe-bench
bench --version
sudo chown -R $USER:$USER /home/ubuntu/oracle-oci
sudo su
source ~/.profile
~/.profile
sudo su ubuntu
nvm install node
bench init frappe-bench
mv bench_new_site.sh ./frappe-bench/
cd frappe-bench/
sudo systemctl restart mariadb
sudo chmod +x bench_new_site.sh
sudo ./bench_new_site.sh
bench use ibrahim.com
bench start
