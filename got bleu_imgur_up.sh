#!/bin/bash
curl -F image=@"$1" -F "key=1913b4ac473c692372d108209958fd15" \
  http://api.imgur.com/2/upload.xml | grep -Eo "<original>(.)*</original>" \
  | grep -Eo "http://i.imgur.com/[^<]*"
