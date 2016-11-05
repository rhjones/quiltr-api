#!/bin/bash

curl --include --request POST http://localhost:4741/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "a@a.a",
      "password": "a",
      "password_confirmation": "a",
      "username": "User A"
    }
  }'

curl --include --request POST http://localhost:4741/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "b@b.b",
      "password": "b",
      "password_confirmation": "b",
      "username": "User B"
    }
  }'
