# h265ize Docker container based on the latest Node.js on Alpine

h265ize but on Alpine and awesome!

![Docker Pulls](https://img.shields.io/docker/pulls/tquinnelly/h265ize-alpine.svg?style=for-the-badge)

[<img src="https://img.shields.io/badge/PayPal-Docker%20Love-informational?style=for-the-badge">](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=FMYAA6ZDFC4BE&source=url)

## How-To
### Usage
Using this image is fairly straightforward.

Pay attention to `-v /input` and `-v /output` as these are bind mounted volumes that need to exist.

```
docker run -d --init \
  -v /path/to/input:/input \
  -v /path/to/output:/output \
  tquinnelly/h265ize-alpine -i
```
#### Post-Args
There are a ton.