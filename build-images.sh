#!/bin/bash
set -e
docker build -t adbadb/spark-base:2.4.5 ./docker/base
docker build -t adbadb/spark-master:2.4.5 ./docker/master
docker build -t adbadb/spark-worker:2.4.5 ./docker/worker
docker build -t adbadb/spark-edge:2.4.5 ./docker/edge
docker push adbadb/spark-base:2.4.5
docker push adbadb/spark-worker:2.4.5
docker push adbadb/spark-edge:2.4.5
