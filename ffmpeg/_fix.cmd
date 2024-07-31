@echo on

cd /d "%~dp0" & setlocal 
set "_ffmpeg="c:\Rip\ffmpeg\bin\ffmpeg.exe" -hide_banner -loglevel error -y"

for /r %%i in (*.mp4)do %_ffmpeg% -i "%%~i" -c copy -f h264 - | %_ffmpeg% -r 29.970 -i - -i "%%~i" -c copy -map 0:v -map 1:a "%%~dpni__fixed.mp4"

echo=Job Is Done! & endlocal

pause