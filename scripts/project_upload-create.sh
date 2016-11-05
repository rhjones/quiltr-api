#!/bin/bash

curl -v http://localhost:4741/project_uploads \
  -H 'Content-Type: multipart/form-data' \
  -H "Authorization: Token token=$TOKEN" \
  -H 'Accept: application/json' \
  -F "project_upload[photo]=@demo.png;type=image/png" \
  -F "project_upload[project_id]=1"