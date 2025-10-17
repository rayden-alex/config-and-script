@echo off

IF NOT "[%*]"=="[]" (
    yt-dlp.exe --ignore-config --config-locations "yts.conf" %*
) ELSE (
    for /f "eol=; tokens=*" %%I in ('powershell Get-Clipboard') do yt-dlp.exe --ignore-config --config-locations "yts.conf" %%I
)
