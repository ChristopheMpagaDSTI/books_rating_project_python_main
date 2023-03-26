FROM jupyter/base-notebook

LABEL DSTI_Python_Lab_A22 <mori.huang@edu.dsti.institute>

ENV JUPYTER_ENABLE_LAB=yes


COPY requirements.txt /tmp/

RUN pip install -r /tmp/requirements.txt