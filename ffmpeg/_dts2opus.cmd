rem ffmpeg -i "g:\---The Music---\MP3\Не наши\Ace Of Base\Ace.Of.Base-The.Sign.1993.DTS.CD\09. Happi Nation.wav.dts" -c:a libopus -ac 6 -ab 510k "g:\---The Music---\MP3\Не наши\Ace Of Base\Ace.Of.Base-The.Sign.1993.DTS.CD\09. Happi Nation.opus"

chcp 1251

ffmpeg -i "g:\---The Music---\MP3\Не наши\Ace Of Base\Ace.Of.Base-The.Sign.1993.DTS.CD\09. Happi Nation.wav.dts" -channel_layout 5.1 -c:a libopus -b:a 448k -vbr:a on -mapping_family:a 1 "g:\---The Music---\MP3\Не наши\Ace Of Base\Ace.Of.Base-The.Sign.1993.DTS.CD\09. Happi Nation.opus"

rem ffmpeg -i "g:\---The Music---\MP3\Не наши\Ace Of Base\Ace.Of.Base-The.Sign.1993.DTS.CD\09. Happi Nation.wav.dts" -channel_layout 5.1 -c:a libopus -b:a 448k -mapping_family:a 1 "g:\---The Music---\MP3\Не наши\Ace Of Base\Ace.Of.Base-The.Sign.1993.DTS.CD\09. Happi Nation.opus"
rem ffmpeg -i "g:\---The Music---\MP3\Не наши\Ace Of Base\Ace.Of.Base-The.Sign.1993.DTS.CD\09. Happi Nation.wav.dts" -f wav -c:a pcm_f32le - | c:\Rip\opus-tools\opusenc.exe --ignorelength --vbr --bitrate 448 -  "g:\---The Music---\MP3\Не наши\Ace Of Base\Ace.Of.Base-The.Sign.1993.DTS.CD\09. Happi Nation.opus"
rem ffmpeg -i "g:\---The Music---\MP3\Не наши\Ace Of Base\Ace.Of.Base-The.Sign.1993.DTS.CD\09. Happi Nation.wav.dts" -f flac - | c:\Rip\opus-tools\opusenc.exe --ignorelength --vbr --bitrate 448 -  "g:\---The Music---\MP3\Не наши\Ace Of Base\Ace.Of.Base-The.Sign.1993.DTS.CD\09. Happi Nation.opus"

rem ffmpeg -i "g:\---The Music---\MP3\Не наши\Ace Of Base\Ace.Of.Base-The.Sign.1993.DTS.CD\09. Happi Nation.opus" -f dts -strict -2  "g:\---The Music---\MP3\Не наши\Ace Of Base\Ace.Of.Base-The.Sign.1993.DTS.CD\__09. Happi Nation.dts"

pause
