#!/bin/bash

yt-dlp --yes-playlist --extract-audio --audio-format mp3 --audio-quality 0 --ignore-errors --batch-file ~/Downloads/yt-dl/download-list.txt
