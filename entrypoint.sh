#!/bin/sh -l

NAME=$1
GREETING="Hello, $NAME! Welcome to my custom GitHub Action!"

# In ra màn hình
echo "$GREETING"

# Xuất output để GitHub Actions có thể sử dụng
echo "greeting=$GREETING" >> "$GITHUB_ENV"
