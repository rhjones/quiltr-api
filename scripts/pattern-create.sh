#!/bin/bash

curl --include --request POST http://localhost:4741/patterns \
  --header "Content-Type: application/json" \
  --data '{
    "pattern": {
      "quilt_size": "twin"
    }
  }'
