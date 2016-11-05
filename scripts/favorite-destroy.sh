#!/bin/bash

curl --include --request DELETE http://localhost:4741/favorites/$ID \
  --header "Authorization: Token token=$TOKEN"
