
# tkp/java/8
# FROM registry.it.taikang.com/tkp/base/centos-java-maven
FROM tkp/base/centos-java-maven

# MAINTAINER WuBo <wubo19842008@gmail.com>
LABEL io.openshift.s2i.scripts-url=image:///usr/local/s2i
COPY ./s2i/bin/ /usr/local/s2i

WORKDIR /opt/app-src

EXPOSE 8080

CMD ["/usr/local/s2i/usage"]
