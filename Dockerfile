FROM python:3.10.9-slim-buster

RUN apt update && apt upgrade -y \
    && apt install git -y

COPY requirements.txt /requirements.txt

# Set the working directory and install dependencies
WORKDIR /nobiss
RUN pip3 install -U pip && pip3 install -U -r /requirements.txt

# Copy the start script
COPY start.sh /start.sh

# Set the command to execute the start script
CMD ["/bin/bash", "/start.sh"]
