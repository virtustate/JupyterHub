FROM continuumio/anaconda3

#RUN apt-get update -q -y
#RUN apt-get upgrade -q -y
#RUN apt-get install -q -y openssh-server sysstat nano

RUN apt-get install -q -y openssh-server
ENTRYPOINT service ssh start && /bin/bash

#RUN conda update conda -q -y
#RUN conda update --all -q -y
#RUN conda install -c conda-forge jupyterhub jupyter_contrib_nbextensions

ADD start.sh /root/
ADD jupyterhub /root/jupyterhub/

CMD bash -C '/root/start.sh';'bash'
