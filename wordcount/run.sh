#!/bin/bash

source setEnv.sh

if [ -e output ]; then rm -rf output; fi
${HADOOP_HOME}/bin/hadoop jar target/wordcount-0.1-SNAPSHOT.jar wcount.WordCount input/ output/
