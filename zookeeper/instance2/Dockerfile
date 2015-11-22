# DOCKER-VERSION 1.0.1
# VERSION        0.5

FROM debian:jessie
MAINTAINER Justin Plock <justin@plock.net>

RUN apt-get update && apt-get install -y openjdk-7-jre-headless wget netcat
RUN wget -q -O - http://apache.mirrors.pair.com/zookeeper/zookeeper-3.4.6/zookeeper-3.4.6.tar.gz | tar -xzf - -C /opt \
    && mv /opt/zookeeper-3.4.6 /opt/zookeeper \
    && mkdir -p /tmp/zookeeper
ADD zoo.cfg /tmp
#RUN cp /opt/zookeeper/conf/zoo_sample.cfg /opt/zookeeper/conf/zoo.cfg
RUN cp /tmp/zoo.cfg /opt/zookeeper/conf/zoo.cfg 

ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64

EXPOSE 2181 2888 3888

WORKDIR /opt/zookeeper

VOLUME ["/opt/zookeeper/conf", "/tmp/zookeeper"]

ADD myid /tmp/zookeeper/

ENTRYPOINT ["/opt/zookeeper/bin/zkServer.sh"]
CMD ["start-foreground"]
