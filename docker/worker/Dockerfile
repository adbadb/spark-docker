FROM adbadb/spark-base:3.5.1

COPY start-worker.sh /

ENV SPARK_LOG "worker.log"
ENV SPARK_MASTER "spark://spark-master:7077"

EXPOSE 8081

CMD ["/bin/bash", "/start-worker.sh"]