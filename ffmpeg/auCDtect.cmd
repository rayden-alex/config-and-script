@echo off
chcp 65001 > nul

Setlocal EnableDelayedExpansion
set "_ffmpeg=c:\Rip\ffmpeg\bin\ffmpeg.exe -hide_banner -loglevel error "
set "_auCDtect=c:\Rip\auCDtect\auCDtect\auCDtect.exe "
set "temp_wav=%TEMP%\aucdtect_temp_%RANDOM%.wav"

for %%A in (%*) do (
  echo.
  echo [Обработка]: %%~nxA

  %_ffmpeg% -i "%%~A" -vn -af "aresample=44100:resampler=soxr" -sample_fmt s16 -f wav "%temp_wav%"
  
  
  for /f "skip=5 delims=" %%a in ('"%_auCDtect%" -m4 %temp_wav%') do (
    echo %%a
  )

  if %errorlevel% neq 0 (
    echo [Ошибка] Не удалось обработать файл: %%~nxA
  )
  
  del /f /q "%temp_wav%"
  echo.
)

pause >nul
