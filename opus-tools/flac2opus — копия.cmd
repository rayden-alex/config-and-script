@echo off

echo Processing %*
echo -----------------------------
pushd %*
call :treeProcess
popd

pause

goto :eof

:treeProcess
for %%A in (*.flac) do (
echo "%%A"
rem echo "%%~dpnxA" "%%~dpnA.opus"

  c:\Rip\opus-tools\opusenc.exe --quiet --music --vbr --bitrate 192 "%%A" "%%~nA.opus" && c:\Rip\opus-tools\touch.exe -c --reference="%%~dpnxA" "%%~dpnA.opus" && c:\Rip\opus-tools\Recycle.exe -f "%%~dpnxA"

)

for /D %%D in (*) do (
  echo Processing "%%~dpnxD"
  echo -----------------------------
  cd %%D
  call :treeProcess
  echo -----------------------------
  echo(
  cd ..
)
goto :eof
