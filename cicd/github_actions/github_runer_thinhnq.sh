#!/bin/bash
set -x #echo on

# ls
# du -sh
# whoami

# STEP [INIT]
# check current folder
pwd



# STEP [nginx_image]
# build docker image
docker build -t nginx_image ./html

# remove container by name
docker rm -f nginx_image

# run container
docker run --name nginx_image -p 80:80 -d nginx_image



# STEP [jdk_image]
# build maven
mvn clean install -U --file java/simple-java-maven-app/pom.xml

# build docker image
docker build -t jdk_image ./java/simple-java-maven-app

# remove container by name
docker rm -f jdk_image

# run container
docker run --name jdk_image -p 8081:8081 -d jdk_image



# STEP [nodejs_image]