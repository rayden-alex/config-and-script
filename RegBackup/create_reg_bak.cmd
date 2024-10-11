@echo off
cd /D "%~dp0"
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
@echo on

reg save HKLM\SAM SAM
reg save HKLM\SECURITY SECURITY
reg save HKLM\SOFTWARE SOFTWARE
reg save HKLM\SYSTEM SYSTEM
reg save HKU\.DEFAULT DEFAULT

"c:\Program Files\WinRAR\Rar.exe" m -rr5p -m4 -agYYYY_MM_DD MyRegBack_ SAM SECURITY SOFTWARE SYSTEM DEFAULT
