::ffmpeg  -i infile.flac  -c:v copy  -b:a 320k  outfile.mp3
ffmpeg  -i "g:\torrent\Elysion\2009 - Silent Scr3am\01. Dreamer.m4a" -acodec mp3 -b:a 128k -vbr on -c:v copy "g:\torrent\Elysion\2009 - Silent Scr3am\01. Dreamer.mp3"
pause

::for %%A in (*.flac) do ffmpeg  -i "%%~nA.flac"  -c:v copy  -b:a 320k  "%%~nA.mp3"
::ffmpeg  -i infile.flac  -q:a 0  outfile.mp3