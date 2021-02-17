FROM python:latest

RUN apt-get update \
 && apt-get install -y python-opencv gstreamer1.0-libav ffmpeg \
 && pip install numpy opencv-python \
 && mkdir /output

ENV WIDTH=4380 HEIGHT=216

ADD ./colorstripe.py /

ENTRYPOINT python colorstripe.py /source.mp4 $WIDTH $HEIGHT
