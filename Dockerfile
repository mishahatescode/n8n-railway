FROM n8nio/n8n:latest-debian

USER root

RUN apt-get update && apt-get install -y --no-install-recommends \
    ffmpeg \
    python3 \
    python3-pip \
    curl \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install --break-system-packages pydub

RUN mkdir -p /opt/assets /opt/scripts /tmp/episodes

USER node
