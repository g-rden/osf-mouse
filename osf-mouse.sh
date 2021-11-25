#!/bin/sh

ffmpeg -i /dev/video0 -f v4l2 -nostdin -r "$1" /dev/video2 2> /dev/null & sleep 2 &&\
python osf-mouse.py --max-threads 12 -F "$1" --model -1 -s 2 -c 2 &&\
kill %1
