#!/bin/bash

#setup pathes
SPARK_HOME=/home/xianyan/Downloads/spark-2.1.0-bin-hadoop2.7
BigDL_HOME=/home/xianyan/code/Bigdl/spark-dl/dist

export PYSPARK_DRIVER_PYTHON=jupyter
export PYSPARK_DRIVER_PYTHON_OPTS="notebook --notebook-dir=./ --ip=* --no-browser"

source ${BigDL_HOME}/bin/bigdl.sh
${SPARK_HOME}/bin/pyspark \
  --master local[4] \
  --driver-memory 4g \
  --properties-file ${BigDL_HOME}/conf/spark-bigdl.conf \
  --py-files ${BigDL_HOME}/lib/bigdl-0.2.0-SNAPSHOT-python-api.zip \
  --jars ${BigDL_HOME}/lib/bigdl-SPARK_2.1-0.2.0-SNAPSHOT-jar-with-dependencies.jar \
  --conf spark.driver.extraClassPath=${BigDL_HOME}/lib/bigdl-0.2.0-SNAPSHOT-jar-with-dependencies.jar \
  --conf spark.executor.extraClassPath=${BigDL_HOME}/lib/bigdl-0.2.0-SNAPSHOT-jar-with-dependencies.jar
