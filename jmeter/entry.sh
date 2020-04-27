#!/bin/bash


# ERROR - jmeter.engine.ClientJMeterEngine: java.rmi.ConnectException: Connection refused to host: 127.0.0.1
# then it may be due to the server host returning 127.0.0.1 as its address 

# One way to fix this is to define RMI_HOST_DEF below
#RMI_HOST_DEF=-Djava.rmi.server.hostname=xxx.xxx.xxx.xxx
set -x

echo $JVM_ARGS
/app/jmeter/bin/jmeter -Djava.rmi.server.hostname=${SERVER_IP:-127.0.0.1} -Dserver_port=${SERVER_PORT:-1099} -s "$@"