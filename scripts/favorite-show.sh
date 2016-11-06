#!/bin/bash

curl --include --request GET http://localhost:4741/favorites/$ID \
  --header "Authorization: Token token=$TOKEN"
