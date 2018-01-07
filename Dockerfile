FROM terrorjack/vanilla:circleci

ADD bootstrap.sh config.yaml /tmp/
RUN sh -e /tmp/bootstrap.sh
ENV PATH=/root/.nix-profile/bin:/root/.nix-profile/sbin:/root/.local/bin:/root/.cabal/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
