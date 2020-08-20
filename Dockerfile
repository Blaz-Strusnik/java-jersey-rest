FROM tomcat:9.0-jdk11-openjdk

MAINTAINER Blaz "dev_ops_docker_java"

EXPOSE 8080

RUN rm -rf ./webapps/*

COPY target/jerseyapp.war /usr/local/tomcat/webapps/ROOT.war

CMD ["catalina.sh", "run"]