FROM ubuntu
WORKDIR /borkcraft
COPY . .
RUN ./scripts/install_java.sh
RUN ./scripts/init_server.sh
CMD ["./scripts/run.sh"]
