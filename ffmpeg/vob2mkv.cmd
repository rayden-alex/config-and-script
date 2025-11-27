
set in_file=%1
set out_opus_file=%in_file:~0,-5%.opus"
set out_mkv_file=%in_file:~0,-5%.mkv"

c:\Rip\ffmpeg\bin\ffmpeg.exe -hide_banner -i %in_file% -vn -c:a libopus -b:a 192k -mapping_family 1 %out_opus_file%

c:\Rip\MKVToolNix\mkvmerge.exe -o %out_mkv_file% --no-audio %in_file% %out_opus_file%

del %out_opus_file%

pause
