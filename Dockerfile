FROM python:3.6.8

WORKDIR /app

RUN apt-get update && apt-get install -f -y postgresql-client

COPY . /app

RUN pip install --upgrade -r requirements.txt

EXPOSE 5000

ENV FLASK_APP=manage.py

RUN [ "chmod", "777", "postgres.sh" ]
