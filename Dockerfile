FROM continuumio/anaconda3

#RUN conda install -c conda-forge jupyterhub
#RUN conda update conda -q -y
#RUN conda update --all -q -y

RUN apt-get update -q -y
RUN apt-get upgrade -q -y
RUN apt-get install -q -y openssh-server
ENTRYPOINT service ssh start && /bin/bash

ADD test.txt /root/
