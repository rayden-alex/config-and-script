@echo off

IF NOT "[%*]"=="[]" (
    yt-dlp.exe %*
) ELSE (
    for /f "eol=; tokens=*" %%I in ('powershell Get-Clipboard') do yt-dlp.exe %%I
)
