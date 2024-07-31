::ffmpeg -h encoder=aac 
::-q:a 0-9
::Effective range for -q:a is around 0.1 - 2.
ffmpeg -i "g:\torrent\Elsiane - Hybrid (2008)\Elsiane - Hybrid.ape" -f wav - | c:\Rip\opus-tools\opusenc.exe --vbr --bitrate 192 - "g:\torrent\Elsiane - Hybrid (2008)\Elsiane - Hybrid.opus"
pause
