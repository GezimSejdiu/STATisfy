default:
	mkdir -p jars
	wget -O jars/sansa-spark.jar https://github.com/SANSA-Stack/SANSA-Examples/releases/download/develop/sansa-examples-spark_2.11-develop.jar

load-data:
	docker run -it --rm -v $(shell pwd)/examples/data:/data --net spark-net -e "CORE_CONF_fs_defaultFS=hdfs://namenode:8020" bde2020/hadoop-namenode:1.1.0-hadoop2.8-java8 hdfs dfs -copyFromLocal /data /data
	docker exec -it namenode hdfs dfs -ls /data

up:
	docker network create spark-net
	docker-compose up -d

down:
	docker-compose down
	docker network rm spark-net