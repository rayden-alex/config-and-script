@echo off
echo "%~dpn1.wav"
c:\Rip\opus-tools\opusenc.exe --music --vbr --bitrate 192 "%~dpn1.wav" "%~dpn1.opus" && c:\Rip\opus-tools\touch.exe -acm -r "%~dpn1.wav" "%~dpn1.opus" && c:\Rip\opus-tools\Recycle.exe -f "%~dpn1.wav"

timeout 3
