@echo off
Setlocal EnableDelayedExpansion
echo %time%

echo Processing %1
SET file_attribute=%~a1
IF NOT "%file_attribute:~0,1%"=="d" (
  ECHO Parameter is a file
  echo -----------------------------
  pushd "%~dp1"
  call :fileProcess %1
  popd
  goto :eof
)


ECHO Parameter is a directory
echo -----------------------------
pushd %1
FOR /F "delims=" %%g IN ('c:\Rip\opus-tools\date2.exe --reference="." +%%Y%%m%%d%%H%%M.%%S') do (set DIRDATE1=%%g)

call :treeProcess

c:\Rip\opus-tools\touch.exe -acm -t !DIRDATE1! "."
popd

echo %time%
pause

goto :eof

:treeProcess
call :byOneFile

for /D %%D in (*) do (
  echo Processing "%%~dpnxD"
  echo -----------------------------
  cd "%%D"
  FOR /F "delims=" %%r IN ('c:\Rip\opus-tools\date2.exe --reference="." +%%Y%%m%%d%%H%%M.%%S') do (set DIRDATE2=%%r)
  call :treeProcess
  c:\Rip\opus-tools\touch.exe -acm -t !DIRDATE2! "."
  echo -----------------------------
  echo(
  cd ..
)
goto :eof

:byOneFile
for %%A in (*.m4a) do (
  call :fileProcess "%%A"
)
goto :eof

:byMultiFile
dir /A:-D /B *.alac 2>nul | c:\Rip\opus-tools\ppx2_64bit.exe -P 4 -L 1 c:\Rip\opus-tools\fileProcess.cmd "{}"
goto :eof

:fileProcess
echo "%~n1.ape"
rem c:\Rip\opus-tools\opusenc.exe --quiet --music --vbr --bitrate 192 "%~n1.flac" "%~n1.opus" && c:\Rip\opus-tools\touch.exe -acm -r "%~n1.flac" "%~n1.opus" && c:\Rip\opus-tools\Recycle.exe -f "%~n1.flac"
c:\Rip\ffmpeg\bin\ffmpeg.exe -hide_banner -i "%~n1.ape" -c:v copy -c:a flac -f flac - | c:\Rip\opus-tools\opusenc.exe --quiet --music --vbr --bitrate 192 - "%~n1.opus" && c:\Rip\opus-tools\touch.exe -acm -r "%~n1.ape" "%~n1.opus" && c:\Rip\opus-tools\Recycle.exe -f "%~n1.ape"
goto :eof


