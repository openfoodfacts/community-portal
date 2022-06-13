FROM python:3

ENV PYTHONUNBUFFERED 1

RUN mkdir /server

WORKDIR /server

COPY . /server/

RUN pip install -r requirements.txt