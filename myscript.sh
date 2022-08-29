#!/bin/bash


LIST_OF_APPS="git docker.io openjdk-11-jre awscli"

echo "$LIST_OF_APPS"

sudo apt-get update
sudo apt-get install -y $LIST_OF_APPS

echo curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
unzip awscli-bundle.zip
sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws

echo "The git version is" `git --version`
echo "The docker version is" `docker --version`
echo "The java version is" `java -version`
echo "The aws versionis " `aws --version`

