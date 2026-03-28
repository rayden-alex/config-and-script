@echo off
Setlocal EnableDelayedExpansion
set "_ffmpeg=c:\Rip\ffmpeg\bin\ffmpeg.exe -hide_banner "

:: %_ffmpeg% -i "g:\3 - Skylane Drive, Turbo Knight - Half _ Life [audiovk.com].mp3" -af drmeter -f null nul 2>&1 | find "[Parsed_drmeter"

:: To fix error -- "No data, dynamic range not measurable"
:: increase the filter's length (-af drmeter@length=4). (or more)
:: length - Set window length in seconds used to split audio into segments of equal length. Default is 3 seconds.

:: Пустые строки в содержимом файлов и выводе команд игнорируются.
:: Все специальные (служебные) символы необходимо экранировать (предварять птичкой ^).
:: Это такие символы, как | = ^ < > &. А также % ! - если они используются не для раскрытия переменной, кроме случая с !, когда не включено удаленное расширение переменных.
:: Сюда же входит знак кавычки, которая соответствует форме кавычки, применяемой для определения вида набора.
:: Регистр переменной цикла имеет значение.
:: Изменить вручную значение переменной цикла нельзя. Например, set %%A=param не даст эффекта.
:: После выхода из цикла переменная цикла уничтожается.
:: Внутри цикла можно использовать не более 1-го комментария вида :: (иначе, будет критическая ошибка и "вылет" из пакетного файла)
:: Вместо этого используем Rem.
:: Внутри цикла можно использовать не более 1-й метки (иначе, будет такой же "вылет").
:: tokens=2 - значит, что первой букве цикла нужно присвоить значение 2-го токена.

rem FOR /F "tokens=1* delims=]" %%A IN ('%_ffmpeg% -i %* -af drmeter -f null nul 2^>^&1 ^| find "[Parsed_drmeter"') DO (
rem %_ffmpeg% -i %* -af drmeter@length=5 -f null nul 2>&1 | find "[drmeter"


FOR /F "tokens=1* delims=]" %%A IN ('%_ffmpeg% -i %* -af drmeter^=length^=3 -f null nul 2^>^&1 ^| find "[Parsed_drmeter"') DO (
  set var=%%B

  rem Удаляем первый символ. (Там пробел остался)
  echo !var:~1!
)

pause >nul
