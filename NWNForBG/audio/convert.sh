#!/bin/bash
echo Start
for file in *.WAV;
   do ffmpeg -i "${file}" -acodec libvorbis "${file%WAV}ogg";
done


