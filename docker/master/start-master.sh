#!/bin/bash
export SPARK_MASTER_HOST=`hostname`
export SPARK_M_LOG=${SPARK_LOG_DIR}/${SPARK_LOG}
ln -sf /dev/stdout ${SPARK_M_LOG}
${SPARK_HOME}/bin/spark-class org.apache.spark.deploy.master.Master --ip $SPARK_MASTER_HOST --port $SPARK_MASTER_PORT --webui-port $SPARK_MASTER_WEBUI_PORT >> ${SPARK_M_LOG}