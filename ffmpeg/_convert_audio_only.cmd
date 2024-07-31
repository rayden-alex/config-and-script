::ffmpeg -h encoder=libfdk_aac      --------  to see the default settings
:: https://github.com/FT129/Handbrake-and-FFmpeg-with-fdk-aac     FFmpeg 6 (Master-b1c3d81) Windows x64 with fdk

::the -q:a parameter does not apply to the libfdk_aac encoder, only to ffmpeg's native AAC encoder (which is inferior).
::https://gist.github.com/ScribbleGhost/54ad17da006e8bba4a1612bd6a64571c

::AACENC_BITRATEMODE	Mode	Stream Bitrate
::-vbr 0	means a Constant Bitrate (CBR)	As specified by AACENC_BITRATE
::-vbr 1-5	means a Variable Bitrate (VBR)	Calculated based on channel layout (See table below)
::In addition, using -vbr 5 disables the cutoff (https://wiki.hydrogenaud.io/index.php?title=Fraunhofer_FDK_AAC#VBR_Modes), potentially preserving more of the sound.

ffmpeg -i "g:\torrent\Alexandra Stan - Mr. Saxobeat.vob" -acodec libfdk_aac -vbr 6 -vcodec copy "g:\torrent\Alexandra Stan - Mr. Saxobeat.mp4"
pause
