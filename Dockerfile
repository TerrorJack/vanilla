FROM alpine:edge

WORKDIR /root
ADD bootstrap.sh /tmp/
RUN sh -e /tmp/bootstrap.sh
ENV \
  NIX_PATH=nixpkgs=/root/.nix-defexpr/channels/nixpkgs \
  PATH=/root/.nix-profile/bin:/root/.nix-profile/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin \
  NIX_SSL_CERT_FILE=/root/.nix-profile/etc/ssl/certs/ca-bundle.crt \
  SSL_CERT_FILE=/root/.nix-profile/etc/ssl/certs/ca-bundle.crt
