# Colors Of Film

Parses the average colors per frame of a video file and compress it into a .png image

#### How to use:

`docker build -t colorstripe .`

`docker run -v [path_to_video_source_file.mp4]:/app/video_color_timeline/video/source.mp4 -v [path_to_your_directory]/Colors-of-Film/output/:/colorstripe/output colorstripe python colorsOfFilm.python /colorstripe/video/source.mp4 [width_in_pixels] [height_in_pixels]`

OR

`./colorstripe.sh [path_to_video_source_file.mp4] [width_in_pixels] [height_in_pixels]`

#### Requirements:
   - Docker
   - a video file
   - Patience
