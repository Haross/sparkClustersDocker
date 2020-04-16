FROM hdfs-base
ENV HADOOP_CONF_DIR=/etc/hadoop
COPY run.sh /run.sh
RUN chmod a+x run.sh


RUN /hadoop/bin/hdfs dfs -put /dataJF/* /hadoop/data/data

ENTRYPOINT ["sh", "-c", "service ssh restart; ./run.sh; sleep infinity"]
#RUN /bin/bash -c "/hadoop/bin/hdfs dfs -put /dataJF/* /hadoop/data/data"
