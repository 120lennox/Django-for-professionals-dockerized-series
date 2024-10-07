# Configuring Docker on your machine

## Introduction
This documentation will show you how to integrate django framework with docker. 
Firstly install your virtual environment and activate it. Install your django and/or django rest_framework. Make sure you add your requirements.txt file. you can use the miracle command ```pip freeze > requirements.txt```. 

### Configuration
    1. Create a dockerfile and add the following code 
        ```dockerfile
        # Pull base image
        FROM python:3.12.7-alpine

        # Set environment variables
        ENV PIP_DISABLE_PIP_VERSION_CHECK 1
        ENV PYTHONDONTWRITEBYTECODE 1
        ENV PYTHONUNBUFFERED 1

        # Set work directory
        WORKDIR /app

        # Install dependencies
        COPY ./requirements.txt .
        RUN pip install -r requirements.txt

        # Copy project
        COPY . .
        

