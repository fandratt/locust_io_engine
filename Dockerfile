FROM python:3-alpine

RUN apk update && \
    apk add build-base

RUN apk update && \
    apk add --update alpine-sdk \
               build-base

RUN pip3 install --upgrade pip
RUN apk add python3-dev linux-headers
RUN pip3 install psutil

RUN mkdir app
WORKDIR /app
COPY ./requirements.txt /app
RUN pip3 install -r requirements.txt
