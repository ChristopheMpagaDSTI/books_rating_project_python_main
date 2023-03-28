# Machine Learning Lab - Book Rating
This is a python machine learning project from DSTI A22 cohort. In this project, we will be using Jupyter notebook for conducting all the machine learning procedures. Please find the following instructions to perform out process.



## Quick start 

Download the DSTI_Python_Lab_A22.zip in the repository. 
And Voilà!!



## Basic start 

### prerequisites

We will be using `docker` and `docker-compose`in this lab so make sure you have [Docker](https://docs.docker.com/engine/install/) and [Docker Compose](https://docs.docker.com/compose/install/) installed. 



### usage 

#### prepare the image (once)

First thing is to download this project into your local directory, and run the following commands to start building the docker image. And assume you have already been inside the working folder and docker desktop is ready. 



```bash
docker-compose -f ci/docker-compose.yml up --build
```

The image has included all the applications and libraries required for this projects, therefore, it might take a while to run. This step only required once.
</br>

#### reach out to the target site of Jupyter notebook

After the process is done. Checkout at the docker desktop, you may find a new container named `DSTI_Python_Lab_A22`. When you click on the link in the port, you could launch the Jupyter notebook with everything settled.

Have fun!











