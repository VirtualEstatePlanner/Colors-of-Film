# Colors Of Film

Parses the average colors per frame of a movie and compress it into an email 

#### How to use:

`docker build -t colorstripe .`


`docker run --volume [path_to_video_source_file.mp4]:/app/video_color_timeline/video/source.mp4 --volume [path_to_your_directory]/Colors-of-Film/output/:/app/video_color_timeline/output colorstripe python colorsOfFilm.python /app/video_color_timeline/video/source.mp4 [width] [height]`

#### Requirements:
   - Docker
   - a video file
   - Patience
