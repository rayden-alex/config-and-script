@echo off
echo "%~n1.flac"
c:\Rip\opus-tools\opusenc.exe --quiet --music --vbr --bitrate 192 "%~n1.flac" "%~n1.opus" && c:\Rip\opus-tools\touch.exe -acm -r "%~n1.flac" "%~n1.opus" && c:\Rip\opus-tools\Recycle.exe -f "%~n1.flac"
