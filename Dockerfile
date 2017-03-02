# Use dcokerid456/jmbase

FROM dcokerid456/jmbase

# Ports to be exposed from the container for JMeter SlavesServer
EXPOSE 1099 50000

# Application to run on starting the container
ENTRYPOINT $JMETER_HOMEbinjmeter-server 
                        -Dserver.rmi.localport=50000 
                        -Dserver_port=1099