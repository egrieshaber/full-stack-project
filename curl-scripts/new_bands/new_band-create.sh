#!/bin/bash

curl --include --request POST "http://localhost:4741/new_bands" \
--header "Content-Type: application/json" \
--header "Authorization: Token token=${TOKEN}" \
--data '{
  "new_band": {
    "band_name": "'"${BANDNAME}"'"
  }
}'
