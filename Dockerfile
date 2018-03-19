FROM python:3.6.2

MAINTAINER Dennis Otugo "otugodennis@gmail.com"

ADD . /app

WORKDIR /app

RUN apt-get update && apt-get install -f -y postgresql-client

RUN pip install -r requirements.txt

EXPOSE 5000

ENV FLASK_APP=manage.py

RUN [ "chmod", "777", "postgres.sh" ]
