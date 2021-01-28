# colorstripe

Parses the average colors per frame of a video file and compress it into a .png image

#### How to use:

`docker build -t colorstripe .`

`docker run -v [full_path_to_your_video_file.mp4]:/source.mp4 -v [full_path_to_your_output_directory]:/output colorstripe`

optional `docker run` flags, defaults to 4380 x 216:

`-e WIDTH=[width_in_pixels_of_output_image]`

`-e HEIGHT=[height_in_pixels_of_output_image])`

#### Requirements:
   - Docker
   - a video file with the .mp4 extension
   - Patience
