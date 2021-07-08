FROM ubuntu
WORKDIR /borkcraft
COPY . . 
RUN ./scripts/install_deps.sh
WORKDIR /borkcraft/server
CMD ["./run.sh"]
