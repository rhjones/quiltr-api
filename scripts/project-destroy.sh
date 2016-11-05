#!/bin/bash

curl --include --request DELETE http://localhost:4741/patterns/$ID
  --header "Authorization: Token token=$TOKEN"
