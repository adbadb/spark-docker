#!/bin/bash
set -e
docker build -t spark-base:2.4.5 ./docker/base
docker build -t spark-master:2.4.5 ./docker/master
docker build -t spark-worker:2.4.5 ./docker/worker
docker build -t spark-edge:2.4.5 ./docker/edge