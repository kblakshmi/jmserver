# Use dcokerid456/jmbase

FROM dcokerid456/jmbase


# Ports to be exposed from the container for JMeter SlavesServer
EXPOSE 1099 3000

# Application to run on starting the container
ENTRYPOINT $JMETER_HOME/bin/jmeter-server \
                        -Dserver.rmi.localport=3000 \
                        -Dserver_port=1099 \
						
								-Djava.rmi.server.hostname=$LOCALIP