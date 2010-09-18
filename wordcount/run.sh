#!/bin/bash

source setEnv.sh

if [ -e output ]; then rm -rf output; fi
${HADOOP_HOME}/bin/hadoop jar wordcount.jar wcount.WordCount input/ output/
