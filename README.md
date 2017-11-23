# hadoop-on-docker
Docker file about Hadoop.
Start all services via docker-compose.

Also see [Hadoop on Docker Hub](https://hub.docker.com/r/mathstana/hadoop/)

## Env:
* JDK 1.8.0_162
* CentOS 6.6
* Hadoop 3.0.0-RC0

## How To Build Docker Images
`docker-compose -f build-images.yml build`

## How To Start Container
`docker-compose up -d`

And you would get the list of containers:
* hadoop-master
* hadoop-slave1
* hadoop-slave2

## How To Operating Hadoop In Container After All Containers
1. Get into container of hbase master via below command:
    * `docker exec -it master bash`

2. Using Hadoop command:
    * `hadoop fs -ls /`

3. Executing mapreduce example pi:

  ```hadoop jar $HADOOP_HOME/share/hadoop/mapreduce/hadoop-mapreduce-examples-3.0.0.jar pi 16 1000```

  If the program worked correctly, the following should be displayed at the end of the program output stream:
  ```
  Estimated value of Pi is 3.14250000000000000000
  ```

## How To Starting All Containers After Stop
`docker-compose start`

## Service Web UI
Hadoop:`http://{hostip}:9870`

Yarn Application:`http://{hostip}:8088`

JobHistory Server: `http://{hostip}:19888`

*Note: _{hostip}_ is the ip of your host node. If your host ip is 192.168.1.78, you could access the Hadoop web ui via _http://192.168.1.78:9870_*

## Ports changed in Hadoop3

>The patch updates the HDFS default HTTP/RPC ports to non-ephemeral ports. The changes are listed below:    
>Namenode ports: 50470 --> 9871, 50070 --> 9870, 8020 --> 9820    
>Secondary NN ports: 50091 --> 9869, 50090 --> 9868    
>Datanode ports: 50020 --> 9867, 50010 --> 9866, 50475 --> 9865, 50075 --> 9864    

To see [HDFS-9427](https://issues.apache.org/jira/browse/HDFS-9427) to know more details.
