FROM n8nio/n8n:latest

USER root

RUN apt-get add --no-cache \
    ffmpeg \
    python3 \
    python3-pip \
    bash

RUN pip3 install --break-system-packages pydub

RUN mkdir -p /opt/assets /opt/scripts /tmp/episodes
