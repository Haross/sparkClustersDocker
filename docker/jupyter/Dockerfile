FROM spark-base:latest

COPY start-jupyter.sh /

ENV SPARK_MASTER "spark://spark-master:7077"

RUN  apt update && \
     apt install -y python3-pip python3-dev && \
     pip3 install --upgrade pip && \
     pip3 install virtualenv

RUN mkdir /sparkNotebooks

RUN /bin/bash -c  "mkdir ~/notebooks" && \
    /bin/bash -c  "cd ~/notebooks" && \
    /bin/bash -c "virtualenv notebooks" && \
    /bin/bash -c "source notebooks/bin/activate" && \
    /bin/bash -c "pip install jupyter" && \
    /bin/bash -c "pip install spylon-kernel" && \
    /bin/bash -c "jupyter notebook --generate-config" && \
    /bin/bash -c "python3 -m spylon_kernel install --user"


COPY ./jupyter_notebook_config.py /root/.jupyter/jupyter_notebook_config.py

EXPOSE 8000 4040

CMD ["/bin/bash", "/start-jupyter.sh"]
