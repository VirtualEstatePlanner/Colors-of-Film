FROM python:latest

RUN mkdir -p /colorstripe/video /colorstripe/output

WORKDIR /colorstripe

ADD ./colorstripe.py /colorstripe

ENV WIDTH=8760
ENV HEIGHT=876

RUN apt-get update \
 && apt-get install -y python-opencv gstreamer1.0-libav ffmpeg \
 && pip install numpy opencv-python

ENTRYPOINT ["python", "colorstripe.py", "/colorstripe/video/source.mp4", "$WIDTH", "$HEIGHT"]
