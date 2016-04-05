FROM java:8
EXPOSE 9000 9443
COPY . /opt/docker
WORKDIR /opt/docker
RUN ["chown", "-R", "daemon", "."]
USER daemon
RUN unzip activator-play-slick-1.0-SNAPSHOT.zip
ENTRYPOINT ["activator-play-slick-1.0-SNAPSHOT/bin/activator-play-slick"]
CMD []
