rem c:\Rip\ffmpeg\bin\ffmpeg.exe -ss 00:00:00 -i "Sci-Fi короткометражка «Атропа» (русская озвучка, 1 серия) [-46252034_456240452].mp4" -to 00:08:55 -c copy output1.mp4

c:\Rip\ffmpeg\bin\ffmpeg.exe -ss 00:00:30 -to 00:11:30 -i 7.mp4 -c copy output7.mp4 -y
rem echo Y | c:\Rip\ffmpeg\bin\ffmpeg.exe -f concat -i joinlist.txt -c copy join_video.mkv
