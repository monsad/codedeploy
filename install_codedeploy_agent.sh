#!/bin/bash
sudo apt-get -y update
sudo apt-get install -y ruby
cd /home/ec2-user
curl -O https://aws-codedeploy-us-east-1.s3.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
