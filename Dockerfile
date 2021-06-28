 # syntax=docker/dockerfile:1
 FROM ubuntu
 RUN apt-get update &&  apt-get install openjdk-16-jre -y
 WORKDIR /borkcraft
 COPY . .
 CMD ["./start.sh"]
