FROM adbadb/spark-base:3.5.1

COPY start-master.sh /

ENV SPARK_LOG "master.log"

EXPOSE 8080 7077 6066

CMD ["/bin/bash", "/start-master.sh"]