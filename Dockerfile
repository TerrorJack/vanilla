FROM terrorjack/vanilla:latest

ADD bootstrap.sh /tmp/
RUN sh -e /tmp/bootstrap.sh
