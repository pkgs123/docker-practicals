## Specify the base image for subsequent instructions
FROM ubuntu

## Update the machine
RUN apt-get update -y

## install jdk
RUN apt-get install default-jdk -y

## install apache & create user apache
RUN apt install apache2 -y && useradd apache

## COPY index.html file to container machine
COPY ./index.html /var/www/html

## Add tomcat package to the container machine
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.80/bin/apache-tomcat-9.0.80.tar.gz /tmp

## To build an image we will use below commands
## -> docker build -t <IMAGE_NAME(i.e anyname)> <PATH_TO_DOCKERFILE>
## NOTES:  1. > : Overwrite the data
##         2. >> : Append the data
##  RUN: instructions get executed when we build the image   - docker build 
##  CMD: instructions get executed when we start a container - docker run
#  
#
##  CMD: Instructions get executed when we start a container - docker run
#        Override the instructions from the command line
#
#   ENTRYPOINT: Instructions get executed when we start a container - docker run
#               cannot override the instructions from the command line  
#
#
#
