SHELL = /bin/bash

run:
	docker build -t dsti_pythonlab_a22/books_rating_project_python_main .
	docker run --name dsti_pythonlab_a22 \
	-p 8888:8888 \
	dsti_pythonlab_a22/books_rating_project_python_main
