@echo off
Setlocal EnableDelayedExpansion
echo %time%

echo Processing %*
echo -----------------------------
pushd %*
FOR /F "delims=" %%g IN ('c:\Rip\opus-tools\date2.exe --reference="." +%%Y%%m%%d%%H%%M.%%S') do (set DIRDATE1=%%g)

call :treeProcess

c:\Rip\opus-tools\touch.exe -acm -t !DIRDATE1! "."
popd

echo %time%
pause

goto :eof

:treeProcess
call :byMultiFile

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
for %%A in (*.flac) do (
  call :fileProcess "%%A"
)
goto :eof

:byMultiFile
dir /A:-D /B *.flac 2>nul | c:\Rip\opus-tools\ppx2_64bit.exe -P 4 -L 1 c:\Rip\opus-tools\fileProcess.cmd "{}"
goto :eof

:fileProcess
echo "%~n1.flac"
c:\Rip\opus-tools\opusenc.exe --quiet --music --vbr --bitrate 192 "%~n1.flac" "%~n1.opus" && c:\Rip\opus-tools\touch.exe -acm -r "%~n1.flac" "%~n1.opus" && c:\Rip\opus-tools\Recycle.exe -f "%~n1.flac"
goto :eof


