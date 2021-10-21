FROM ascdc/jdk8:latest

MAINTAINER chchmlml <<A href="mailto:chchmlml@163.com@163.com">chchmlml@163.com>

ENV JAVA_HOME=/usr/java/jdk
ENV JAVA_BIN=/usr/java/jdk/bin
ENV PATH=$PATH:$JAVA_HOME/bin
ENV CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar

ADD console ./console
WORKDIR ./console

RUN chmod a+x ./bin/start_server.sh

#EXPOSE 8899
ENTRYPOINT ["./bin/start_server.sh"]




