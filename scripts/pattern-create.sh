#!/bin/bash

# curl --include --request POST http://localhost:4741/patterns \
#   --header "Content-Type: application/json" \
#   -F "upload=@demo.png;type=image/png" \
#   --data '{
#     "pattern": {
#       "quilt_size": "twin",
#     }
#   }'

curl -v http://localhost:4741/patterns \
  -H 'Content-Type: multipart/form-data' \
  -H 'Accept: application/json' \
  -F "pattern[quilt_size]=queen" \
  -F "pattern[upload]=@demo.png;type=image/png"