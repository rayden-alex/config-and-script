@echo off
Setlocal EnableDelayedExpansion
echo %time%

echo Processing %1
SET file_attribute=%~a1
IF NOT "%file_attribute:~0,1%"=="d" (
  ECHO Parameter is a file
  echo -----------------------------
  pushd "%~dp1"
  c:\Rip\opus-tools\fileProcess.cmd %1
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
rem The following function gives you a weight w for each cc, where cc is the channel configuration written as a decimal number (1.0 for mono, 2.0 for stereo, 5.1 for surround, etc.):
rem w(cc) = cc^0.75

c:\Rip\opus-tools\opusenc.exe --quiet --music --vbr --bitrate 192 "%~n1.flac" "%~n1.opus" && c:\Rip\opus-tools\touch.exe -acm -r "%~n1.flac" "%~n1.opus" && c:\Rip\opus-tools\Recycle.exe -f "%~n1.flac"
goto :eof


