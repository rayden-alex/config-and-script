@echo off

IF NOT "[%*]"=="[]" (
    yt-dlp.exe --ignore-config --config-locations "yta.conf" %*
) ELSE (
    for /f "eol=; tokens=*" %%I in ('powershell Get-Clipboard') do yt-dlp.exe --ignore-config --config-locations "yta.conf" %%I
)
