FROM adbadb/spark-base:3.5.1

COPY spark-submit.sh /

ENV SPARK_MASTER "spark://spark-master:7077"
ENV SPARK_SUBMIT_ARGS ""
ENV SPARK_APPLICATION_ARGS ""
#ENV SPARK_APPLICATION_JAR_LOCATION /opt/spark-apps/myjar.jar
#ENV SPARK_APPLICATION_MAIN_CLASS my.main.Application

CMD ["/bin/bash", "/spark-submit.sh"]