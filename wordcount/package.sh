#!/bin/bash

source setEnv.sh

mkdir wordcount_classes
javac -classpath ${HADOOP_HOME}/hadoop-common-${HADOOP_VERSION}.jar:${HADOOP_HOME}/hadoop-mapred-${HADOOP_VERSION}.jar:${HADOOP_HOME}/hadoop-hdfs-${HADOOP_VERSION}.jar -d wordcount_classes wcount/WordCount.java 
jar -cvf wordcount.jar -C wordcount_classes/ .
