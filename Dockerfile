FROM nvidia/cuda:10.0-cudnn7-devel-ubuntu18.04

RUN  apt-get update \
  && apt-get install -y wget vim bzip2\
  && rm -rf /var/lib/apt/lists/*

RUN apt-get update
RUN apt-get -y install curl

RUN apt-get update
RUN apt-get install python3.6 -y
RUN apt-get install python3-pip -y
RUN apt-get install git -y

RUN pip3 install jupyterlab==2.2.0
RUN pip3 install torchsummary==1.5.1
RUN pip3 install tqdm==4.48.0
RUN pip3 install torch==1.5.1
RUN pip3 install torchvision==0.6.1
RUN pip3 install ipywidgets==7.5.1
RUN pip3 install matplotlib==3.3.0
RUN pip3 install albumentations==0.4.6
RUN pip3 install pandas==1.0.5
RUN pip3 install scikit-learn==0.23.1

WORKDIR /src

EXPOSE 8091

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8091", "--no-browser", "--allow-root", "--NotebookApp.token=''", "--NotebookApp.password=''"]
#CMD ["echo", "Hi"]
