#FROM tensorflow/tensorflow:nightly-gpu-py3-jupyter
FROM tensorflow/tensorflow:1.14.0-py3-jupyter

ADD . /app
WORKDIR /app

RUN apt -y update
RUN apt install -y graphviz
RUN pip3 install --upgrade pip
RUN pip3 install --upgrade -r requirements.txt