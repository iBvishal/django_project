FROM python:3.7-alpine
MAINTAINER Vishal Bhardwaj

# Run python unbuffered mode, no buffering of output
ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

# creating new user for our app
RUN adduser -D user
USER user