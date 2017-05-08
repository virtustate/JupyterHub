FROM continuumio/anaconda3

#RUN conda install -c conda-forge jupyterhub
#RUN conda update conda -q -y
#RUN conda update --all -q -y

apt-get install openssh-server
ENTRYPOINT service ssh start && /bin/bash

ADD test.txt /root/
