#!/bin/bash
TAG=3.5.1
set -e
docker build -t adbadb/spark-base:3.5.1 ./docker/base
docker build -t adbadb/spark-master:3.5.1 ./docker/master
docker build -t adbadb/spark-worker:3.5.1 ./docker/worker
docker build -t adbadb/spark-edge:3.5.1 ./docker/edge
docker push adbadb/spark-base:3.5.1
docker push adbadb/spark-worker:3.5.1
docker push adbadb/spark-edge:3.5.1
