# from Jobss
FROM registry.redhat.io/jboss-eap-7/eap74-openjdk17-openshift-rhel8:7.4.10-3

# copy war
COPY   ./target/spring-petclinic-3.0.0-SNAPSHOT.war  /opt/eap/standalone/deployments/spring-petclinic.war

# run
CMD ["/opt/eap/bin/openshift-launch.sh"]
