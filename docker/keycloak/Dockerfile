FROM jboss/keycloak:4.8.3.Final

#add extra packages here if you need

USER root

COPY module.xml /opt/keycloak/modules/system/layers/keycloak/com/mysql/main/module.xml
COPY mysql-connector-java-8.0.13.jar /opt/keycloak/modules/system/layers/keycloak/com/mysql/main/mysql-connector-java-8.0.13.jar
COPY entrypoint.sh /opt/jboss/tools/entrypoint.sh

RUN chmod +x /opt/jboss/tools/entrypoint.sh
