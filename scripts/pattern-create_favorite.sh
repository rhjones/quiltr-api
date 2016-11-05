#!/bin/bash

curl --include --request POST http://localhost:4741/patterns/$ID/favorites \
  --header "Authorization: Token token=$TOKEN" \
  --data '{}'