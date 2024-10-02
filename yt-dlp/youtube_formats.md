Note: This is all almost full YouTube ID informations. Original owner goes to AgentOak, modified version by Martin Eesmaa.

See the credits and also special thanks in below.

**Last updated: July 2024**

Also known as itag or format codes and way back they could be specified with the fmt parameter (e.g. `&fmt=22`).
Depending on the age and/or popularity of the video, not all formats will be available.

## DASH video

| Resolution | AV1 HFR High | AV1 HFR | AV1 | VP9.2 HDR HFR | VP9 HFR | VP9 | H.264 HFR | H.264 | VP8 |
|-----------:|-------------:|--------:|----:|--------------:|--------:|----:|----------:|------:|-----:|
| | MP4 | MP4 | MP4 | WebM | WebM | WebM | MP4 | MP4 | WebM |
| **4320p** | 702 | 402/571 | | | 272 | | | ~~138~~ |
| **2160p** | 701 | 401 | | 337 | 315 | (313) | (305) | (266) |
| **1440p** | 700 | 400 | | 336 | 308 | (271) | (304) | (264) |
| **1080p** | 699 | 399 | | 335 | 303 | 248/616 | 299 | 137/216 | 170 |
| **720p** | 698 | 398 | | 334 | 302/612 | 247 | 298 | 136 | 169 |
| **480p** | 697 | | 397 | 333 | | 244 | | 135 | 168 |
| **360p** | 696 | | 396 | 332 | | 243 | | 134 | 167 |
| **240p** | 695 | | 395 | 331 | | 242 | | 133 |
| **144p** | 694 | | 394 | 330 | | 278/598 | | 160/597 |

- HFR stands for "High Framerate", which means up to 60 FPS, whereas non-HFR is limited to 30 FPS
- Non-HFR 1080p+ H.264 and VP9 variants are not provided for HFR videos anymore
- Same IDs are reused for 360° videos
- 1440p+ H.264 variants are only provided for 360° videos anymore
- At the moment, AV1 variants are only provided for popular videos
- All AV1 variants can be HDR (no separate non-HDR AV1 variants are offered)
- **AV1 HFR High**: High refers to the bitrate. These variants have **~3-4 times** the bitrate of their normal counterparts. Additional side effect is providing AV1 HFR variants for low resolutions (<=480p). These variants are rare even among videos with AV1 variants. Found on [this video](https://www.youtube.com/watch?v=LXb3EKWsInQ).
- **AV1 HFR 4320p**: Format 571 has roughly 50% higher bitrate than 402. Sometimes only one of them is offered, sometimes both. Can be seen on [this video](https://www.youtube.com/watch?v=hVvEISFw9w0).
- **VP8** can be found [this video](https://www.youtube.com/watch?v=eRsGyueVLvQ).
- At **format 616**, it is the only YouTube premium video format.

## Duplicate video IDs

Those duplicate video IDs of m3u8 as Apple Native HLS are connected to common numbers, not rare numbers.

270 (m3u8) == 137 (https) are same video quality, but different protocol.

Thanks, dtlnor for explanation of equalation video IDs.

```
602 mp4   256x144     12    │ ~  9.28MiB    87k m3u8  │ vp09.00.10.08    87k video only
269 mp4   256x144     24    │ ~ 18.55MiB   175k m3u8  │ avc1.4D400C     175k video only
603 mp4   256x144     24    │ ~ 16.62MiB   156k m3u8  │ vp09.00.11.08   156k video only
229 mp4   426x240     24    │ ~ 34.72MiB   327k m3u8  │ avc1.4D4015     327k video only
604 mp4   426x240     24    │ ~ 30.72MiB   289k m3u8  │ vp09.00.20.08   289k video only
230 mp4   640x360     24    │ ~ 86.22MiB   812k m3u8  │ avc1.4D401E     812k video only
605 mp4   640x360     24    │ ~ 60.27MiB   567k m3u8  │ vp09.00.21.08   567k video only
231 mp4   854x480     24    │ ~144.25MiB  1358k m3u8  │ avc1.4D401E    1358k video only
606 mp4   854x480     24    │ ~ 98.31MiB   926k m3u8  │ vp09.00.30.08   926k video only
232 mp4   1280x720    24    │ ~280.39MiB  2640k m3u8  │ avc1.4D401F    2640k video only
609 mp4   1280x720    24    │ ~181.03MiB  1705k m3u8  │ vp09.00.31.08  1705k video only
311 mp4   1280x720    60    │ ~  1.14GiB  4842k m3u8  │ avc1.4D4020    4842k video only
270 mp4   1920x1080   24    │ ~498.55MiB  4694k m3u8  │ avc1.640028    4694k video only
614 mp4   1920x1080   24    │ ~312.21MiB  2940k m3u8  │ vp09.00.40.08  2940k video only
617 mp4   1920x1080   60    │ ~  1.52GiB  6443k m3u8  │ vp09.00.41.08  6443k video only
312 mp4   1920x1080   60    │ ~  1.89GiB  7987k m3u8  │ avc1.64002A    7987k video only
620 mp4   2560x1440   24    │ ~928.71MiB  8745k m3u8  │ vp09.00.50.08  8745k video only
623 mp4   2560x1440   60    │ ~  3.85GiB 16287k m3u8  │ vp09.00.50.08 16287k video only
625 mp4   3840x2160   24    │ ~  1.94GiB 18661k m3u8  │ vp09.00.50.08 18661k video only
628 mp4   3840x2160   60    │ ~  8.27GiB 35007k m3u8  │ vp09.00.51.08 35007k video only
```

Examples of two videos:

[30 fps video](https://www.youtube.com/watch?v=IueRHBxDNm8)

[60 fps video](https://www.youtube.com/watch?v=PdzOkN9_F9A)

## DASH audio

| Code | Container | Audio Codec | Audio Bitrate | Channels | Still offered? |
|:-----|:----------|:------------|--------------:|---------:|---------------:|
| 139 | MP4 | AAC (HE v1) | 48 Kbps | Stereo (2) | Yes, YT Music |
| 140 | MP4 | AAC (LC) | 128 Kbps | Stereo (2) | Yes, YT Music |
| (141) | MP4 | AAC (LC) | 256 Kbps | Stereo (2) | No, YT Music* |
| 249 | WebM | Opus | (VBR) ~50 Kbps | Stereo (2) | Yes |
| 250 | WebM | Opus | (VBR) ~70 Kbps | Stereo (2) | Yes |
| 251 | WebM | Opus | (VBR) <=160 Kbps | Stereo (2) | Yes |
| 256 | MP4 | AAC (HE v1) | 192 Kbps | Surround (5.1) | Rarely |
| 258 | MP4 | AAC (LC) | 384 Kbps | Surround (5.1) | Rarely |
| 325 | MP4 | DTSE (DTS Express) | 384 Kbps | Surround (5.1) | Rarely* |
| 327 | MP4 | AAC (LC) | 256 Kbps | Surround (5.1) | ?* |
| 328 | MP4 | EAC3 | 384 Kbps | Surround (5.1) | Rarely |
| 338 | WebM | Opus | (VBR) ~480 Kbps (?) | Quadraphonic (4) | ?* |
| 380 | MP4 | AC3 | 384 Kbps | Surround (5.1) | Rarely |
| 599 | MP4 | AAC (HE v1) | 30 Kbps | Stereo (2) | Yes |
| 600 | WebM | Opus | (VBR) ~35 Kbps | Stereo (2) | Yes |
| 774 | WebM | Opus | (VBR) ~256 Kbps | Stereo (2) | Some, YT Music* |

- Surround audio can be found on some demo videos
- **YT Music**: These formats are offered on Youtube Music. Format 141 is only available to Premium users with High Quality option
- **Format 327, 338**: These have been found on this [Stereo 3D video](https://www.youtube.com/watch?v=QrhcfjPFaEk)
- **Format 325**: You can find out one video link [here](https://www.youtube.com/watch?v=WAyN4mQgl-4)
- **Format 774 at YT Music**: Some music have available high quality of Opus up to 256 kbps to Premium users, music link [here](https://www.youtube.com/watch?v=1QWiYk3nnWk)

## Legacy (non-DASH)

| Code | Container | Video Codec | Video Res. | Audio Codec | Audio Bitrate | Channels | Still offered? |
|:-----|:----------|:------------|-----------:|:------------|--------------:|---------:|---------------:|
| 5 | FLV | H.263 (Sorenson Spark) | 240p (4:3) | MP3 | 64 Kbps | Mono (1) | No |
| 6 | FLV | H.263 (Sorenson Spark) | 270p (4:3) | MP3 | 64 Kbps | Mono (1) | No |
| 13 | 3GP | MPEG-4 (Simple, L0) | 144p | AAC (LC) | Unknown | Mono (1) | No |
| 17 | 3GP | MPEG-4 (Simple, L0) | 144p | AAC (LC) | 24 Kbps | Mono (1) | No*, old mobile phones |
| 18 | MP4 | H.264 (Baseline, L3.0) | 360p | AAC (LC) | 96 Kbps | Stereo (2) | Yes, GDrive |
| 34 | FLV | H.264 (Main, L3.0) | 360p | AAC | 128 Kbps | Stereo (2) | No |
| 35 | FLV | H.264 (Main, L3.0) | 480p | AAC | 128 Kbps | Stereo (2) | No |
| 38 | MP4 | H.264 | 3072p | AAC | 192 Kbps | Stereo (2) | No |
| 36 | 3GP | MPEG-4 (Simple, L0) | 144p | AAC (LC) | 24 Kbps | Mono (1) | Rarely, old mobile phones |
| (59) | MP4 | H.264 (Main, L3.1) | 480p | AAC (LC) | 128 Kbps | Stereo (2) | No, GDrive |
| 43 | WebM | VP8 | 360p | Vorbis | 128 Kbps | Stereo (2) | No |
| 44 | WebM | VP8 | 480p | Vorbis | 128 Kbps | Stereo (2) | No |
| 45 | WebM | VP8 | 720p | Vorbis | 192 Kbps | Stereo (2) | No |
| 46 | WebM | VP8 | 1080p | Vorbis | 192 Kbps | Stereo (2) | No |
| 78 | MP4 | H.264 | 480p | AAC | 128 Kbps | Stereo (2) | No |
| 22 | MP4 | H.264 (High, L3.1) | 720p | AAC (LC) | 128 Kbps | Stereo (2) | No*, GDrive |
| (37) | MP4 | H.264 (High, L4.0) | 1080p | AAC (LC) | 128 Kbps | Stereo (2) | No, GDrive |

- **Format 17**: Allows for old mobile phones (eg. cell phones) to watch all videos. The video can have 7.5 & 12 fps only.
- Always limited to 30 FPS
- **GDrive**: These formats are offered for Google Drive video previews. Note that the video player on GDrive displays incorrect codecs on rightclick -> stats
- **Format 22**: Available for most videos, except music and music videos (not limited to official music channels!)
- Starting since May 2024, the **Format 17** and **Format 22** is removed for every YouTube videos uploaded.

## Livestreams (non-DASH)

| Code | Container | Video Codec | Video Res. | Audio Codec | Audio Bitrate | Still offered? |
|:-----|:----------|:------------|-----------:|:------------|--------------:|---------------:|
| 91 | MPEG-TS (HLS) | H.264 (Baseline, L1.1) | 144p | AAC (HE v1) | 48 Kbps | Yes |
| 92 | MPEG-TS (HLS) | H.264 (Main, L2.1) | 240p | AAC (HE v1) | 48 Kbps | Yes |
| 93 | MPEG-TS (HLS) | H.264 (Main, L3.0) | 360p | AAC (LC) | 128 Kbps | Yes |
| 94 | MPEG-TS (HLS) | H.264 (Main, L3.1) | 480p | AAC (LC) | 128 Kbps | Yes |
| 95 | MPEG-TS (HLS) | H.264 (Main, L3.1) | 720p | AAC (LC) | 128 Kbps | Yes |
| 96 | MPEG-TS (HLS) | H.264 (High, L4.0)  | 1080p | AAC (LC) | 128 Kbps | Yes |
| 300 | MPEG-TS (HLS) | H.264 (Main, L3.2) | HFR 720p | AAC (LC) | 128 Kbps | Yes |
| 301 | MPEG-TS (HLS) | H.264 (High, L4.2) | HFR 1080p | AAC (LC) | 128 Kbps | Yes |

- Non-HFR variants are limited to 30 FPS, HFR to 60 FPS
- Non-HFR variants for 720p and 1080p may not be offered if HFR is available
- Livestreams are also offered through DASH video (H.264, VP9) and DASH audio (AAC) streams
- Both audio codecs of MPEG-TS are limited sample rate to 44.1 Khz for streaming a live broadcast.

## Template youtube-dl formats

### For archiving videos: Only choose combinations that fit WebM (VP9+Opus) or MP4 (H.264+AAC)

```
bestvideo[ext=webm]+251/bestvideo[ext=mp4]+(258/256/140)/bestvideo[ext=webm]+(250/249)/best
```

### For archiving audio: Choose any format that's best
AAC Surround 384 / Opus 160 / AAC 192 / AAC Surround 192 / AAC 128 / Opus 70 / AAC 96 / Opus 50 / AAC 48

```
258/251/22/256/140/250/18/249/139
```

### For streaming videos: Allow any combination

```
bestvideo+bestaudio/best
```

## yt-dlp usage example

### Archive videos
```
yt-dlp --download-archive yt-dlp.list --ignore-errors --write-info-json --add-metadata --write-sub --sub-lang en,de,ja --write-thumbnail --embed-subs -f "<format>" "<URL>"
```

### Archive audio
```
yt-dlp --download-archive yt-dlp.list --ignore-errors --write-info-json --add-metadata --write-sub --sub-lang en,de,ja --write-thumbnail --embed-thumbnail --extract-audio -f "<format>" "<URL>"
```

### Complete archive video with audio, comments, subtitles, thumbnail and everything about YouTube ID:
```
yt-dlp --write-description --write-comments --write-link --write-auto-subs --embed-subs --embed-thumbnail --embed-chapters --sponsorblock-mark all https://www.youtube.com/watch?v=WhWc3b3KhnY
```

# Credits and special thanks

AgentOak (original owner) made YouTube list formats of video and audio ID especially with tips.

MartinEesmaa (forked owner) updated YouTube list formats for up to date.

Special thanks for finding/fixing by:

qzmtch for finding missing 616 format

dtlnor for little interesting explanation of duplicate formats same

r8420 for finding missing 612 format

Ciancy28 for finding high quality of Opus 256 kbps (format 774) in YT Music

joaquinito2070 for renaming youtube-dl to yt-dlp and fixing incorrect bitrates. Some commits were on it.