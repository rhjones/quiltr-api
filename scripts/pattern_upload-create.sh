#!/bin/bash

curl -v http://localhost:4741/pattern_uploads \
  -H 'Content-Type: multipart/form-data' \
  -H 'Accept: application/json' \
  -F "pattern_upload[pattern_image]=@pattern1_mono.png;type=image/png" \
  -F "pattern_upload[pattern_id]=1"