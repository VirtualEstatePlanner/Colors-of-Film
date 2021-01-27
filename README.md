# colorstripe

Parses the average colors per frame of a video file and compress it into a .png image

#### How to use:

`docker build -t colorstripe .`

`docker run -e WIDTH=[width_in_pixels_of_output_image] -e HEIGHT=[height_in_pixels_of_output_image] -v [path_to_video_source_file.mp4]:/app/video_color_timeline/video/source.mp4 -v [path_to_your_colorstripe_directory]/output/:/colorstripe/output colorstripe`

#### Requirements:
   - Docker
   - a video file
   - Patience
