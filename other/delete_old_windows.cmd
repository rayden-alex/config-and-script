:: 1. Переименовать папку Windows в Windows.old
:: 2. В "Мой компьютер" клик правой кнопкой по диску на котором удаляем вин - > свойства. 
:: 3. "Очистка диска" , ставим галку "Предыдущие версии вин" , чистим.
:: 4. Профит! 


takeown /f "k:\Users" /r
icacls "k:\Users" /reset /T


:: USE "fsutil reparsepoint delete xxxxx"  to delete Junction or c:\Program Files\SysinternalsSuite\junction64.exe -d

:: (Get-ChildItem . -Force -Recurse | Where-Object { $_.LinkType -eq "Junction" -and $_.Attributes -match "ReparsePoint" }) | Select $_.FullName
:: (Get-ChildItem . -Force -Recurse | Where-Object { $_.Attributes -match "ReparsePoint" }) | Select $_.FullName
:: Then delete (all) by adding on: | Remove-Item -Force -Recurse

pause
