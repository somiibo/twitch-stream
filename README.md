# Somiibo Twitch Stream

## Changing the background image
Modify the `CMD ffmpeg` line in `Dockerfile`.

## Testing locally
```shell
heroku logs --tail -a=somiibo-twitch-stream
docker build . -t somiibotwitchstream:v1 -f Dockerfile
docker run -a stdin -a stdout -i -t somiibotwitchstream:v1
```

## Notes on using test images
The test image that is being streamed can easily be adjusted. By default this uses the `smptebars` ffmpeg filter. Some alternate filters you could use include:

- `color` (add the `color` param)
- `testsrc2`

See the [ffmpeg filter docs](https://ffmpeg.org/ffmpeg-filters.html#allrgb_002c-allyuv_002c-color_002c-haldclutsrc_002c-nullsrc_002c-pal75bars_002c-pal100bars_002c-rgbtestsrc_002c-smptebars_002c-smptehdbars_002c-testsrc_002c-testsrc2_002c-yuvtestsrc) for a more complete list and detailed documentation of the params.

To change the filter you'd only want to modify the `-i` param's value, most likely only the word before the `=` sign.

## Credits
Made with ♥ by [ITW Creative Works](https://itwcreativeworks.com) x [Somiibo](https://somiibo.com).
