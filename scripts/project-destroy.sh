#!/bin/bash

curl --include --request DELETE http://localhost:4741/projects/$ID
  --header "Authorization: Token token=$TOKEN"
