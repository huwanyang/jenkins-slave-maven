FROM jenkins/jnlp-slave:latest

MAINTAINER huwanyang168@163.com

LABEL Description="This is a extend image base from jenkins/jnlp-slave which install maven in it."

USER root

RUN pwd

# install maven
RUN wget -P /home/jenkins http://mirrors.sonic.net/apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz && \
    tar -zxf apache-maven-3.3.9-bin.tar.gz && \
#    mv apache-maven-3.3.9 /usr/local && \
#    rm -f apache-maven-3.3.9-bin.tar.gz && \
    ln -s /home/jenkins/apache-maven-3.3.9/bin/mvn /usr/bin/mvn && \
    ln -s /home/jenkins/apache-maven-3.3.9 /usr/local/apache-maven

