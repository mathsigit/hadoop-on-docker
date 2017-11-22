# hadoop 3.0.0-RC0
FROM mathstana/centos:6.6-jdk8
MAINTAINER Yung-An He <mathstana@gmail.com>

ARG HADOOP_TAR_URL=http://people.apache.org/~wang/3.0.0-RC0/hadoop-3.0.0.tar.gz
ARG HADOOP_VERSION=hadoop-3.0.0

#Download hadoop tar gz file
RUN wget ${HADOOP_TAR_URL} -P /opt
RUN cd /opt && tar zxvf /opt/${HADOOP_VERSION}.tar.gz
RUN mv /opt/${HADOOP_VERSION} /opt/hadoop
RUN rm /opt/${HADOOP_VERSION}.tar.gz
#Copy configuration file from local to images
COPY config /opt/hadoop/etc/hadoop

#Set env variable
ENV HADOOP_HOME /opt/hadoop
ENV PATH $PATH:$HADOOP_HOME/bin
