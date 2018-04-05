# Kafka Docker Example

Using kafka on docker environment.

## Start Kafka Server

```
$ git clone $project_git_url
$ docker-compose up -d
```

## Start Kafka Producer

```
make run-producer
```


## Start Consummer

```
make run-consummer
```

## Others

Create kafka topic (after connct to kafka server)

```
./bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic test
```

List topics

```
./bin/kafka-topics.sh --list --zookeeper kafkadocker_zookeeper_1:2181
```

