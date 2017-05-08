FROM continuumio:anaconda3

RUN conda install jupyterhub
RUN conda update conda
RUN conda update --all
