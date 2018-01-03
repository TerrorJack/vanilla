FROM alpine:edge

ADD init.sh bootstrap.sh /tmp/
RUN sh -e /tmp/init.sh
USER vanilla
WORKDIR /home/vanilla
RUN sh -e /tmp/bootstrap.sh
ENV \
  ENV=/home/vanilla/.profile \
  NIX_PATH=nixpkgs=/home/vanilla/.nix-defexpr/channels/nixpkgs \
  PATH=/home/vanilla/.nix-profile/bin:/home/vanilla/.nix-profile/sbin:$PATH \
  NIX_SSL_CERT_FILE=/etc/ssl/certs/ca-certificates.crt
