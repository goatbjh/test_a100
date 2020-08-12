ARG FROM_IMAGE_NAME=nvcr.io/nvidia/tensorflow:20.06-tf1-py3
FROM ${FROM_IMAGE_NAME}

ADD requirements.txt .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ADD . /workspace/rn50v15_tf
WORKDIR /workspace/rn50v15_tf
