FROM python:3

ENV PYTHONUNBUFFERED 1

RUN mkdir /community_portal

WORKDIR /community_portal

COPY . /community_portal/

RUN pip install -r requirements.txt