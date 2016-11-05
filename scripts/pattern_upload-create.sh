#!/bin/bash

# curl --include --request POST http://localhost:4741/patterns \
#   --header "Content-Type: application/json" \
#   -F "upload=@demo.png;type=image/png" \
#   --data '{
#     "pattern": {
#       "quilt_size": "twin",
#     }
#   }'

curl -v http://localhost:4741/pattern_uploads \
  -H 'Content-Type: multipart/form-data' \
  -H 'Accept: application/json' \
  -F "pattern_upload[pattern_image]=@pattern1_mono.png;type=image/png" \
  -F "pattern_upload[pattern_id]=1"