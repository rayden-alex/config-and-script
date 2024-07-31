@echo off
pushd %~dp0

rem Save spectrogram to a file
for %%1 in (%*) do ffmpeg.exe -y -hide_banner -nostdin -i "%%~1" -update 1 -filter_complex "[0:a]showspectrumpic=s=2048x1024:mode=combined:win_func=hann:scale=log:fscale=lin:stop=22000:gain=0.5[A];[A]drawtext=text='%%~nx1':fontfile=C\\:/Windows/Fonts/arial.ttf:fontcolor=0xADFF2F:x=(w-tw)/2:y=12:fontsize=28" "%%~dpn1.spectrogram.png"

rem Show spectrogram with FFPLAY
rem for %%1 in (%*) do ffmpeg.exe -y -hide_banner -i "%%~1" -update 1 -filter_complex "[0:a]showspectrumpic=s=2048x1024:mode=combined:win_func=hann:scale=log:fscale=lin:stop=22000:gain=0.5[A];[A]drawtext=text='%%~nx1':fontfile=C\\:/Windows/Fonts/arial.ttf:fontcolor=0xADFF2F:x=(w-tw)/2:y=12:fontsize=28" -f image2pipe - | ffplay -hide_banner - -x 1910 -y 1010

timeout /t 2
