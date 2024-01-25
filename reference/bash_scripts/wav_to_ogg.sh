#!/bin/bash
parallel ffmpeg -i {1} {1.}.{2} ::: *.WAV ::: ogg

