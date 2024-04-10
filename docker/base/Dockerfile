FROM alpine:3.16.0

ENV SPARK_VERSION=3.5.1
ENV HADOOP_VERSION=3
ENV SPARK_HOME=/opt/spark
ENV SPARK_MASTER_PORT 7077
ENV SPARK_MASTER_WEBUI_PORT 8080
ENV SPARK_WORKER_WEBUI_PORT 8081
ENV SPARK_LOG_DIR "${SPARK_HOME}/logs"

RUN apk add --no-cache curl wget tar java-cacerts bash jq openjdk17-jdk python3 py-pip nss libc6-compat \
    && ln -s /lib64/ld-linux-x86-64.so.2 /lib/ld-linux-x86-64.so.2 \
    && wget --no-verbose -O apache-spark.tgz https://archive.apache.org/dist/spark/spark-${SPARK_VERSION}/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz \
    && mkdir -p ${SPARK_HOME} \
    && mkdir -p ${SPARK_LOG_DIR} \
    && tar -xf apache-spark.tgz -C ${SPARK_HOME} --strip-components=1 \
    && rm apache-spark.tgz

ENV PYTHONHASHSEED 1

WORKDIR ${SPARK_HOME}

