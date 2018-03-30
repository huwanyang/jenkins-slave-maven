FROM jenkins/jnlp-slave:alpine

MAINTAINER huwanyang168@163.com

LABEL Description="This is a extend image base from jenkins/jnlp-slave which install maven in it."

# install maven
RUN wget http://mirrors.sonic.net/apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz && \
    tar -zxf apache-maven-3.3.9-bin.tar.gz && \
    sudo mv apache-maven-3.3.9 /usr/local && \
    sudo rm -f apache-maven-3.3.9-bin.tar.gz && \
    sudo ln -s /usr/local/apache-maven-3.3.9/bin/mvn /usr/bin/mvn && \
    sudo ln -s /usr/local/apache-maven-3.3.9 /usr/local/apache-maven

