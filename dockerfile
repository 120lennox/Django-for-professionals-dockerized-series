#Pull base image

FROM python:3.12.7-slim-bullseye

# set environment
ENV PIP_DISABLE_PICK_VERSION_CHECK 1
ENV PYTHONDONTWRITEBYTCODE 1
ENV PYTHONBUFFERED 1

# Set work directory
WORKDIR /code

#install dependencies
COPY ./requirements.txt .
RUN pip install -r requirements.txt

# copy project
COPY . .