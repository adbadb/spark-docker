#!/bin/bash
export SPARK_W_LOG=${SPARK_LOG_DIR}/${SPARK_LOG}
ln -sf /dev/stdout ${SPARK_W_LOG}
${SPARK_HOME}/bin/spark-class org.apache.spark.deploy.worker.Worker --webui-port $SPARK_WORKER_WEBUI_PORT $SPARK_MASTER >> $SPARK_W_LOG