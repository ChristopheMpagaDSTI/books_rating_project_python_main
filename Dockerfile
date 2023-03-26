FROM jupyter/base-notebook

LABEL DSTI_Python_Lab_A22 <mori.huang@edu.dsti.institute>

ENV JUPYTER_ENABLE_LAB=yes

COPY . /DSTI_Python_Lab_A22

WORKDIR /DSTI_Python_Lab_A22

RUN pip install -r /DSTI_Python_Lab_A22/requirements.txt

ENTRYPOINT [ "" ]
CMD [ "jupyter notebook",  "Python_labs_project.ipynb" ]