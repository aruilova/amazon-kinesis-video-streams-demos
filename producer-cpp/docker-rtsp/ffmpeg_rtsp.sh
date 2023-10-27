#!/bin/bash

cd ./mediamtx.d
./mediamtx &
cd ..
read -p "Continuing in 2 Seconds...." -t 2 
ffmpeg -re -stream_loop -1 -i ./video_rezd.mp4 -c:v copy -an -f rtsp -rtsp_transport tcp rtsp://localhost:8554/stream &
read -p "Continuing in 5 Seconds...." -t 5
