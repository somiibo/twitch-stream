# Install packages
FROM jrottenberg/ffmpeg:3.4-alpine

# Copy relevant files over
COPY ./background.png ./background.png

# Run as a separate user
RUN adduser -D streamer
USER streamer

# Entry
ENTRYPOINT []

# Stream a test image
# CMD ffmpeg -re -f lavfi -i smptebars=size=640x320:rate=15 -f flv -vcodec libx264 -pix_fmt yuv420p -preset fast -r 15 -g 30 rtmp://live-lax.twitch.tv/app/$TWITCH_STREAMKEY

# Stream the Somiibo logo
CMD ffmpeg -framerate 8 -re -loop 1 -i ./background.png -f flv -vcodec libx264 -pix_fmt yuv420p -preset fast -r 15 -g 30 rtmp://live-lax.twitch.tv/app/$TWITCH_STREAMKEY
