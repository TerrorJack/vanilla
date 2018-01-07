FROM terrorjack/vanilla:circleci

ADD bootstrap.sh /tmp/
RUN sh -e /tmp/bootstrap.sh
