FROM tomcat:9.0
MAINTAINER Fivann <noreply@example.com>

COPY ./target/*.war /usr/local/tomcat/webapps

EXPOSE 8080
