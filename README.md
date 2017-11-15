# hadoop-on-docker
Docker file about HBase.
Start all services via docker-compose.


## Env:
* JDK 1.8.0_162
* CentOS 6.6
* Hadoop 3.0.0-RC0

## How To Build Docker Images
`docker-compose -f build-images.yml build`

## How To Start Container
`docker-compose up -d`

And you would get the list of containers:
* master
* slave1
* slave2

## How To Operating Hadoop In Container After All Containers
1. Get into container of hbase master via below command:
    * `docker exec -it master bash`

2. Using Hadoop command:
    * `hadoop fs -ls /`

## How To Starting All Containers After Stop
`docker-compose start`

## Service Web UI
Hadoop:`http://{hostip}:50070`

Yarn Application:`http://{hostip}:8088`

*Note: _{hostip}_ is the ip of your host node. If your host ip is 192.168.1.78, you could access the Hadoop web ui via _http://192.168.1.78:50070_*
