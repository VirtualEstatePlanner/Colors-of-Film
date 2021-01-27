FROM python:latest

RUN mkdir -p /app/video_color_timeline/video /app/video_color_timeline/output

WORKDIR /app/video_color_timeline

RUN apt-get update && apt-get install -y python-opencv gstreamer1.0-libav ffmpeg
RUN pip install numpy opencv-python

ADD ./ColorsOfFilm.py /app/video_color_timeline

CMD python ColorsOfFilm.py
