# from Jobss
FROM registry.redhat.io/jboss-eap-7/eap74-openjdk17-openshift-rhel8:7.4.10-3

# copy war
COPY   ./target/petclinic.war  /opt/eap/standalone/deployments/

# run
CMD ["/opt/eap/bin/openshift-launch.sh"]
