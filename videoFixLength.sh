#!/bin/bash
mkdir fix; for i in *.mp4; do ffmpeg -ignore_editlist 1 -i "$i" -codec copy ./fix/"$i"; rm -r ./"$i"; done; mv ./fix/*.mp4 ./; rm -r ./fix