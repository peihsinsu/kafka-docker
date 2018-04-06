CFG_FILE=/data/fluentd-kafka.conf
IMG_NAME=test/fluentd:kafka

build-fluentd:
	docker build -t ${IMG_NAME} .
start-fluentd:
	docker run -p 9880:9880 -it -v "`pwd`/fluentd-kafka.conf:${CFG_FILE}" ${IMG_NAME} fluentd -c ${CFG_FILE}
