#!/bin/bash
[ ! -d "/hadoop/data/nn" ] && /hadoop/bin/hdfs --config /etc/hadoop namenode -format
/hadoop/sbin/start-dfs.sh
#sleep 30
#/hadoop/bin/hdfs dfs -put /dataJF/* hdfs://namenode:9000/hadoop/data/data
