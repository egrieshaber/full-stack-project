#!/bin/bash

curl --include --request PATCH "http://localhost:4741/new_bands/${ID}" \
--header "Content-Type: application/json" \
--header "Authorization: Token token=${TOKEN}" \
--data '{
  "new_band": {
    "band_name": "'"${BANDNAME}"'"
  }
}'
