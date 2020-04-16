#!/bin/bash
set -e
docker build -t spark-base:latest ./docker/base
docker build -t spark-master:latest ./docker/spark-master
docker build -t spark-worker:latest ./docker/spark-worker
docker build -t jupyter:latest ./docker/jupyter

docker build -t hdfs-base:latest ./docker/hadoop/base
docker build -t hdfs-namenode:latest ./docker/hadoop/namenode
