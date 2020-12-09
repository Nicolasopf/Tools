# Tools for a new machine:

## Command to reduce the resolution of a video
This keeps the aspect radio and the quality while reducing the resolution.

```
ffmpeg -i 1205201058.mp4 -vf scale=1280:-1 -crf 30 -preset veryslow smaller.mp4
```