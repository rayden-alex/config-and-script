::chcp 65001 > nul
::ffmpeg  -i infile.flac  -c:v copy  -b:a 320k  outfile.mp3
ffmpeg  -i "g:\geek-8922622.webm" "g:\geek-8922622.gif"
pause

::for %%A in (*.flac) do ffmpeg  -i "%%~nA.flac"  -c:v copy  -b:a 320k  "%%~nA.mp3"
::ffmpeg  -i infile.flac  -q:a 0  outfile.mp3