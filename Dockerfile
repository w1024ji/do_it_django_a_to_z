# pull official base image
FROM python:3.11.0-slim-buster

# set work directory
WORKDIR /usr/src/app

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY . /usr/src/app/

# Install necessary system dependencies
# RUN apt-get update && apt-get install -y libpq-dev
RUN apt-get update && apt-get install -y gcc libpq-dev

# install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt