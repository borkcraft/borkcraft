 # syntax=docker/dockerfile:1
 FROM ubuntu
 RUN ./install_java.sh
 WORKDIR /borkcraft
 COPY . .
 CMD ["./run.sh"]
