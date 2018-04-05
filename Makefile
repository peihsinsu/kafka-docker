IMAGE_REPO=test

build-base:
	docker build -f Dockerfile.base -t ${IMAGE_REPO}/kafka-base .

build-kafka:
	docker build -f Dockerfile.kafka -t ${IMAGE_REPO}/kafka .
build-zookeeper:
	docker build -f Dockerfile.zookeeper -t ${IMAGE_REPO}/zookeeper .

build-all: build-base build-kafka build-zookeeper

run-server: 
	docker-compose up -d


run-command: 
	docker run -it --net kafkadocker_default --entrypoint bash ${IMAGE_REPO}/kafka 

run-producer: 
	docker run -it --net kafkadocker_default --entrypoint bash ${IMAGE_REPO}/kafka ./bin/kafka-console-producer.sh --broker-list kafkadocker_kafka_1:9092 --topic messages

run-comsummer: 
	docker run -it --net kafkadocker_default --entrypoint bash ${IMAGE_REPO}/kafka ./bin/kafka-console-consumer.sh --bootstrap-server kafkadocker_kafka_1:9092 --topic messages --from-beginning 
