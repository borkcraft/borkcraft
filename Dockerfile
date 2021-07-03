FROM ubuntu
WORKDIR /borkcraft
COPY . . 
RUN ./scripts/install_deps.sh
RUN ./install.sh
WORKDIR /borkcraft/server
CMD ["./run.sh"]
