#!/bin/bash
touch /root/started

pt-get update -q -y
apt-get upgrade -q -y
apt-get install -q -y ysstat nano

conda update conda -q -y
conda update --all -q -y
conda install -c conda-forge jupyterhub jupyter_contrib_nbextensions

touch /root/finished
