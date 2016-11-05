#!/bin/bash

curl --include --request POST http://localhost:4741/projects \
  --header "Content-Type: application/json" \
  --data '{
    "project": {
      "name": "Quilt for A",
      "start_date": "2016-11-01",
      "finish_date": "2016-11-04",
      "finished": true,
      "notes": "This was so fun to make!",
      "pattern_id": 1,
      "user_id": 1
    }
  }'
