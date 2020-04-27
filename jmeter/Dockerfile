FROM alpine as dl

ARG JMETER_VERSION=5.2.1
ARG DOWNLOAD_URL=https://mirrors.ocf.berkeley.edu/apache//jmeter/binaries/apache-jmeter-${JMETER_VERSION}.tgz

RUN wget ${DOWNLOAD_URL} -O /tmp/apache-jmeter-${JMETER_VERSION}.tgz


FROM azul/zulu-openjdk:8

ARG JMETER_VERSION=5.2.1
WORKDIR /app/jmeter


ENV JVM_ARGS="${JVM_ARGS} -XX:+UseG1GC -XX:+ParallelRefProcEnabled"
ENV JVM_ARGS="${JVM_ARGS} -Xmx4G -Xms4G -Xss256k -XX:+UseTLAB -XX:+ResizeTLAB -XX:+UseNUMA "
ENV JVM_ARGS="${JVM_ARGS} -Djava.net.preferIPv4Stack=true -XX:+AlwaysPreTouch"



COPY --from=dl /tmp/apache-jmeter-${JMETER_VERSION}.tgz /tmp/apache-jmeter-${JMETER_VERSION}.tgz
ADD jmeter/entry.sh /entry.sh
RUN tar -xzf /tmp/apache-jmeter-${JMETER_VERSION}.tgz -C /app/jmeter --strip-components=1 \
    && rm -f /tmp/apache-jmeter-${JMETER_VERSION}.tgz \
    && chmod 771 -R /app/jmeter \
    && echo 'server.rmi.ssl.disable=true' >> /app/jmeter/bin/jmeter.properties

ENTRYPOINT [ "/entry.sh" ]
