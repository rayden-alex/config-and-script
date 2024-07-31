::ffmpeg  -i infile.flac  -c:v copy  -b:a 320k  outfile.mp3
::ffmpeg  -i "g:\torrent\Elysion\2009 - Silent Scr3am\01. Dreamer.m4a" -acodec mp3 -b:a 128k -vbr on -c:v copy "g:\torrent\Elysion\2009 - Silent Scr3am\01. Dreamer.mp3"

for %%A in (*.flac) do c:\Rip\ffmpeg\bin\ffmpeg.exe -hide_banner -i "%%~nA.flac" -filter_complex "aemphasis=mode=reproduction:type=cd" -c:v copy  -c:a flac "./0/%%~nA.flac"
pause

