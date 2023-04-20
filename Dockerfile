# from tomcat:8.0
FROM registry.redhat.io/jboss-eap-7/eap74-openjdk11-openshift-rhel8:latest

# copy war
COPY   ./target/spring-petclinic-3.0.0-SNAPSHOT.war  /opt/eap/standalone/deployments/

# run
CMD ["/opt/eap/bin/openshift-launch.sh"]
