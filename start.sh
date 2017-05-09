#!/bin/bash
touch /root/started

pt-get update -q -y
apt-get upgrade -q -y
apt-get install -q -y sysstat nano

conda update conda -q -y
conda update --all -q -y
conda install -c conda-forge jupyterhub jupyter_contrib_nbextensions

ssh-keygen -t rsa -N '' -f /root/.ssh/id_rsa
cp /root/.ssh/id_rsa.pub /root/.ssh/authorized_keys

touch /root/finished
