#!/bin/bash

set -x

cd /home/ubuntu
sudo git clone https://<token>@gitlab.com/testgroup7502524/oracle-oci.git
cd oracle-oci
sudo chmod +x deploy.sh
. deploy.sh
