#!/bin/bash


LIST_OF_APPS="git docker.io openjdk-11-jre awscli"

echo "$LIST_OF_APPS"

sudo apt-get update
sudo apt-get install -y $LIST_OF_APPS

echo "The git version is" `git --version`
echo "The docker version is" `docker --version`
echo "The java version is" `java -version`
echo "The aws versionis " `aws --version`

