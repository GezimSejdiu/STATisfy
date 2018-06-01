# STATsify:A REST Interface for SANSA RDF Dataset Statistics

Interactive REST API for running [SANSA DistLODStats](https://github.com/SANSA-Stack/SANSA-RDF/tree/develop/sansa-rdf-spark/src/main/scala/net/sansa_stack/rdf/spark/stats) using [Apache Livy](http://livy.incubator.apache.org./).
Livy is an open source REST interface for interacting with [Apache Spark](http://spark.apache.org/) from anywhere. It supports executing snippets of code or programs in a Spark context that runs locally or in [Apache Hadoop YARN](http://hadoop.apache.org/docs/current/hadoop-yarn/hadoop-yarn-site/YARN.html).

This reporitory provide list of services composed on [docker-compose.yml](./docker-compose.yml) for running Hadoop/Spark cluster locally.
The cluster also includes [Hue](http://gethue.com/) for navigation and copying file to HDFS.

# Getting started
Get the SANSA jar file (requires ```wget```):
```
make
```
Start the cluster (this will lead to downloading BDE docker images and build lify docker-image, will take a while):
```
make up
```
When start-up is done you will be able to access the following interfaces:
* http://localhost:8080/ (Spark Master)
* http://localhost:8088/home (Hue HDFS Filebrowser)
* http://localhost:8998/ (Livy REST Api)

To load the data to your cluster simply do:
```
make load-data
```
