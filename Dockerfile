FROM python:latest

RUN mkdir -p /colorstripe/video /app/colorstripe/output

WORKDIR /colorstripe

ADD ./colorstripe.py /colorstripe
ADD ./colorstripe.sh /colorstripe

ENV WIDTH=8760
ENV HEIGHT=876

RUN apt-get update \
 && apt-get install -y python-opencv gstreamer1.0-libav ffmpeg \
 && pip install numpy opencv-python \
 && chmod +x colorstripe.sh

ENTRYPOINT ["colorstripe.sh", "/colorstripe/video/source.mp4", "$WIDTH", "$HEIGHT"]
