FROM n8nio/n8n:latest

USER root

RUN apk add --no-cache \
    ffmpeg \
    python3 \
    py3-pip \
    bash \
    curl

RUN pip3 install pydub

RUN mkdir -p /opt/assets /opt/scripts /tmp/episodes

USER node
