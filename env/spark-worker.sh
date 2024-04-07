#Environment variables used by the spark workers
#Do not touch this unless you modify the compose master
SPARK_MASTER=spark://spark-master:7077
#Allocation Parameters
SPARK_WORKER_CORES=3
SPARK_WORKER_MEMORY=3G
SPARK_DRIVER_MEMORY=256m
SPARK_EXECUTOR_MEMORY=512m