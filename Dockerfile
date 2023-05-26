FROM jupyter/datascience-notebook:latest

USER ${NB_UID}

RUN pip install dbfread
RUN pip install linearmodels

USER root

RUN mkdir /home/repo-intro
RUN cd /home/repo-intro
WORKDIR /home/repo-intro

RUN mkdir /home/repo-intro/data
RUN mkdir /home/repo-intro/src
RUN mkdir /home/repo-intro/notebooks
RUN mkdir /home/repo-intro/models


ENV NOTEBOOK_ARGS="--NotebookApp.token='' --NotebookApp.password=''"
COPY requirements.txt .



EXPOSE 8888