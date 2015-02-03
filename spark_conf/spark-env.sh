#!/usr/bin/env bash

# This file contains environment variables required to run Spark. Copy it as
# spark-env.sh and edit that to configure Spark for your site.
#
# The following variables can be set in this file:
# - SPARK_LOCAL_IP, to set the IP address Spark binds to on this node
# - MESOS_NATIVE_LIBRARY, to point to your libmesos.so if you use Mesos
# - SPARK_JAVA_OPTS, to set node-specific JVM options for Spark. Note that
#   we recommend setting app-wide options in the application's driver program.
#     Examples of node-specific options : -Dspark.local.dir, GC options
#     Examples of app-wide options : -Dspark.serializer
#
# If using the standalone deploy mode, you can also set variables for it here:
# - SPARK_MASTER_IP, to bind the master to a different IP address or hostname
# - SPARK_MASTER_PORT / SPARK_MASTER_WEBUI_PORT, to use non-default ports
# - SPARK_WORKER_CORES, to set the number of cores to use on this machine
# - SPARK_WORKER_MEMORY, to set how much memory to use (e.g. 1000m, 2g)
# - SPARK_WORKER_PORT / SPARK_WORKER_WEBUI_PORT
# - SPARK_WORKER_INSTANCES, to set the number of worker processes per node
# - SPARK_WORKER_DIR, to set the working directory of worker processes
export SCALA_HOME=/usr/local/scala
export SPARK_WORKER_MEMORY=1g
export SPARK_WORKER_CORES=1
export SPARK_WORKER_INSTANCES=1
export HADOOP_HOME=/usr/local/hadoop

#export SPARK_MEMORY=6g
#export SPARK_JAVA_OPTS
#export SPARK_DAEMON_JAVA_OPTS=6g

#export SPARK_LOCAL_IP=XXXX

export MASTER="spark://$HOSTNAME:7077"
#export SPARK_MASTER_WEBUI_PORT=YYYY

#export SPARK_MEM=4000m
#export SPARK_JAVA_OPTS="-Dspark.default.parallelism=2 -Xms1G -Xmx2G" 
#export SPARK_JAR=$SPARK_HOME/assembly/target/scala-2.10/spark-assembly-0.9.1-hadoop2.2.0.jar 
#export SPARK_YARN_APP_JAR=$SPARK_HOME/examples/target/scala-2.10/spark-examples-assembly-0.9.1.jar

