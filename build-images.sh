#!/bin/bash
TAG=3.5.1
set -e
docker build -t adbadb/spark-base:$TAG ./docker/base
docker build -t adbadb/spark-master:$TAG ./docker/master
docker build -t adbadb/spark-worker:$TAG ./docker/worker
docker build -t adbadb/spark-edge:$TAG ./docker/edge
docker push adbadb/spark-base:$TAG
docker push adbadb/spark-worker:$TAG
docker push adbadb/spark-edge:$TAG
