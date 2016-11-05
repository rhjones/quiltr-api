#!/bin/bash

curl --include --request PATCH http://localhost:4741/projects/$ID \
  --header "Authorization: Token token=$TOKEN"
  --header "Content-Type: application/json" \
  --data '{
    "project": {
      "name": "Quilt for A",
      "start_date": "2016-11-01",
      "finish_date": "",
      "finished": false,
      "notes": "This was so fun to make!",
      "pattern_id": 1,
      "user_id": 1
    }
  }'
