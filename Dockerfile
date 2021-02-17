FROM python:latest

RUN mkdir /colorstripe /output

ADD ./colorstripe.py /

ENV WIDTH=4380
ENV HEIGHT=216

RUN apt-get update \
 && apt-get install -y python-opencv gstreamer1.0-libav ffmpeg \
 && pip install numpy opencv-python

ENTRYPOINT python colorstripe.py /source.mp4 $WIDTH $HEIGHT
