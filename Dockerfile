FROM terrorjack/vanilla:haskell

ADD bootstrap.sh /tmp/
RUN sh -e /tmp/bootstrap.sh
