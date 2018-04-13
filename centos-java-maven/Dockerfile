FROM tkp/base/centos-java

# MAINTAINER WuBo <wubo19842008@gmail.com>

ENV MAVEN_VERSION 3.5.2
ADD apache-maven-3.5.2-bin.tar.gz /usr/local


RUN mv /usr/local/apache-maven-$MAVEN_VERSION /usr/local/maven && \
      ln -sf /usr/local/maven/bin/mvn /usr/local/bin/mvn

RUN mkdir -p /root/.m2 && chmod -R a+rwX /root/.m2

# RUN mkdir /etc/maven

COPY ./settings.xml /root/.m2/
RUN mkdir /opt/app-src
RUN mkdir /opt/app


CMD ["/bin/bash"]

