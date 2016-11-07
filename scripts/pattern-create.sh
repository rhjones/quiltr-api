#!/bin/bash

curl --include --request POST http://localhost:4741/patterns \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "pattern": {
      "svg": "",
      "colors": "4",
      "quilt_size": "queen",
      "block_size": "12",
      "color_scheme": "neon"
    }
  }'
