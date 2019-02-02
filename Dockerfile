FROM ubuntu:latest
MAINTAINER Edgar Mamerto "edmamerto@gmail.com"
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
RUN mkdir /app
WORKDIR /app
RUN pip install -r requirements.txt