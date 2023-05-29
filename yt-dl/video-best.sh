#!/bin/bash

yt-dlp --yes-playlist --ignore-errors -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best" --batch-file ~/Downloads/yt-dl/download-list.txt
