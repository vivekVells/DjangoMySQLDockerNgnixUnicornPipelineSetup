# Pull the base image
FROM python:3

# Set environment variables
# ENV PYTHONDONTWRITEBYTECODE 1 Python won’t try to write .pyc files which we do not want.
ENV PYTHONDONTWRITEBYTECODE 1
# ENV PYTHONUNBUFFERED 1 This ensures our console output looks familiar and is not buffered by Docker, which we don’t want.
ENV PYTHONUNBUFFERED 1

RUN mkdir /code
WORKDIR /code

#Upgrade pip
RUN pip install pip -U
ADD requirements.txt /code/

#Install dependencies
RUN pip install -r requirements.txt
ADD . /code/
