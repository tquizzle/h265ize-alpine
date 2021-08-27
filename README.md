# h265ize Docker container based on the latest Node.js on Alpine

h265ize but on Alpine and awesome!

![Docker Pulls](https://img.shields.io/docker/pulls/tquinnelly/h265ize-alpine.svg?style=for-the-badge)

[<img src="https://img.shields.io/badge/PayPal-Docker%20Love-informational?style=for-the-badge">](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=FMYAA6ZDFC4BE&source=url)

## How-To
### Usage
Pay attention to `/input` and `/output` as these are bind mounted folders that need to exist.

After the container is up, you can copy files into the `input` directory and they will process with the given defaults or user overrides.


#### Example Usage
```
docker run -d --init \
  -v /path/to/input:/input \
  -v /path/to/output:/output \
  tquinnelly/h265ize-alpine --watch -m ultrafast
```
#### Volumes
Above we expose two mount points for this container. You might want more, just add them in conjunction with the post-args below.
#### Post-Args

* `-f` - Container format to output; Options: mkv, mp4, m4v; default: mkv.
* `-l` - Milliseconds to be encoded in preview mode; default: 30000
* `-m` - x265 encoder preset; Options: ultrafast, superfast, veryfast, faster, fast, medium, slow, slower, veryslow, placebo; default: fast
* `-n` - The native language used to select default audio and subtitles. You may use 3 letter or 2 letter ISO 639-2 Alpha-3/Alpha-2 codes or the full language name. Examples: [eng|en|English|jpn|ja|Japanese]
* `-o` - Override mode; Allows conversion of videos that are already encoded by the hevc codec
* `-q` - Sets the qp quality target; default: 19
* `-x` - Extra x265 options. Options can be found on the x265 options page
* `--bitdepth` - Forces the output bitdepth (bitdepths 8, 10, and 12 are supported)
* `--accurate-timestamps` - Accurate Timestamps (substantially increases file size but sometimes fixes timestamps)
* `--delete` - Deletes source after encoding is complete and replaces it with new encode; STRONGLY NOT RECOMMENDED
* `--disable-upconvert` - Disable Upconvert; Stop converting Vobsub subs to srt; Only works with mkv's
* `--force-he-audio` - Force High Efficiency audio encoding even on lossless audio tracks
* `--he-audio` - High Efficiency audio mode
* `--downmix-he-audio` - If there are more than 2.1 audio channels, downmix them to stereo.
* `--normalize-level` - Define a level of normalization to be applied. See Issue 56 for more info.
* `--screenshots` - Take 6 screenshots at regular intervals throughout the finished encode
* `--stats` - Creates a stats file in the current working directory named h265ize.csv
* `--watch` - Watches a folder for new files and process the videos
* `--video-bitrate` - Sets the video bitrate, set to 0 to use qp instead of a target bitrate

There are more available at the [Official h265ize GitHub page](https://github.com/FallingSnow/h265ize#options).

2021/26/08 - Build Date

<hr />
Kudos

Shout out to [adriel](https://github.com/adriel) and [FallingSnow](https://github.com/FallingSnow).