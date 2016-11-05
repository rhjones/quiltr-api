#!/bin/bash

curl --include --request POST http://localhost:4741/patterns \
  --header "Content-Type: application/json" \
  --data '{
    "pattern": {
      "svg": "",
      "colors": "2",
      "quilt_size": "lap",
      "block_size": "6"
    }
  }'
