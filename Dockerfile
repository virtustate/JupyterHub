FROM continuumio/anaconda3

RUN conda install -c conda-forge jupyterhub
RUN conda update conda
RUN conda update --all
