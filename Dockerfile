FROM ubuntu:18.04

COPY install.sh install.sh

USER root

RUN chmod +x install.sh && \
    sh install.sh

EXPOSE 50000

EXPOSE 8081

EXPOSE 50000

USER jenkins

CMD [ "java", "-jar", "/usr/share/jenkins/jenkins.war" ]

