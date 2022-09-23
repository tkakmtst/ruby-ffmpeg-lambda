# frozen_string_literal: true

require 'streamio-ffmpeg'

movie = FFMPEG::Movie.new("./tmp/video.mp4")

puts "duration: #{movie.duration}"
puts "bitrate: #{movie.bitrate}" # 481 (bitrate in kb/s)
puts "size: #{movie.size}" # 455546 (filesize in bytes)
puts "video_stream #{movie.video_stream}" # "h264, yuv420p, 640x480 [PAR 1:1 DAR 4:3], 371 kb/s, 16.75 fps, 15 tbr, 600 tbn, 1200 tbc" (raw video stream info)
puts "video_codec: #{movie.video_codec}" # "h264"
puts "resolution: #{movie.resolution}" # "640x480"
puts "width: #{movie.width}" # 640 (width of the movie in pixels)
puts "height: #{movie.height}" # 480 (height of the movie in pixels)
puts "frame_rate: #{movie.frame_rate}" # 16.72 (frames per second)
