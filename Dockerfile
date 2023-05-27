FROM centos:8
MAINTAINER keyur
RUN mkdir /mnt/tomcat
WORKDIR /mnt/servers/tomcat
RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.75/bin/apache-tomcat-9.0.75.tar.gz
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-9.0.75/* /mnt/tomcat/.

WORKDIR /mnt/servers/tomcat/webapps
RUN curl -O -L https://github.com/keyurvk98/game-of-life.git
EXPOSE 8080

CMD [/mnt/servers/tomcat/bin/catalina.sh", "run"]

