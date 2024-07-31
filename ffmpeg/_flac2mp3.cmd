::ffmpeg  -i infile.flac  -c:v copy  -b:a 320k  outfile.mp3
ffmpeg  -i "g:\The Cure vs. Placebo & Kate Bush - Burn-Running Up That Hill (Burn Remix).flac" -c:v copy  -b:a 320k  outfile.mp3

::for %%A in (*.flac) do ffmpeg  -i "%%~nA.flac"  -c:v copy  -b:a 320k  "%%~nA.mp3"
::ffmpeg  -i infile.flac  -q:a 0  outfile.mp3