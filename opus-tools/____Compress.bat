@echo off
set dir=%~dp0
:loop
set file=%1
"%dir%\MAC.exe" %file% %file:.wav=.ape% -c2000
shift
if not "%~1" == "" goto loop
