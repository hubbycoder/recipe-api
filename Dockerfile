FROM python:3.7-alpine

ENV PYTHONUNBUFFERED=1

LABEL Name=recipe-api Version=0.0.1

EXPOSE 3000

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D appuser
USER appuser


