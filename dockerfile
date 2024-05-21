FROM ubuntu:20.04

RUN apt-get update && apt-get install openjdk-17-jdk wget -y

RUN wget https://github.com/hyperledger/besu/releases/download/24.3.3/besu-24.3.3.tar.gz && tar -xzvf besu-24.3.3.tar.gz

ENV PATH=$PATH:/besu-24.3.3/bin
ENV JAVA_HOME='/usr/lib/jvm/java-17-openjdk-amd64'
