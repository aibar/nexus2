FROM aibar/jre:1.8

EXPOSE 8081

VOLUME /data

ENV RUN_AS_USER=root

ENTRYPOINT ["/nexus-2.14.0-01/bin/nexus", "console"]

RUN wget http://ftp.brains.kz/nexus-2.14.0-01.tar.gz -O nexus.tar.gz && \
    tar xf nexus.tar.gz && \
    rm nexus.tar.gz

COPY nexus.properties /nexus-2.14.0-01/conf
