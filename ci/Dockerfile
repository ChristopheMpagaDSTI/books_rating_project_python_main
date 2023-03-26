FROM jupyter/datascience-notebook:latest

ENV JUPYTER_ENABLE_LAB=yes

COPY . /DSTI_Python_Lab_A22

WORKDIR /DSTI_Python_Lab_A22

RUN pip install -r /DSTI_Python_Lab_A22/ci/requirements.txt