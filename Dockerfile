FROM node:20-alpine

USER root

RUN apk add --no-cache \
    ffmpeg \
    python3 \
    py3-pip \
    bash \
    curl

RUN pip3 install pydub

RUN npm install -g n8n

RUN mkdir -p /opt/assets /opt/scripts /tmp/episodes

EXPOSE 5678

ENV N8N_PORT=5678

CMD ["n8n", "start"]
