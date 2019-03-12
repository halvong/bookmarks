FROM python:3.6.5

ENV PYTHONBUFFERED 1

LABEL maintainer="halvong@yahoo.com"

COPY . /usr/src/app
WORKDIR /usr/src/app

ADD requirements.txt requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

#CMD python manage.py runserver 0.0.0.0:8000