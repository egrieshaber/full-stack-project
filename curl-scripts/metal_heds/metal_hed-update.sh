#!/bin/bash

curl --include --request PATCH "http://localhost:4741/metal_heds/${ID}" \
--header "Content-Type: application/json" \
--data '{
  "metal_hed": {
    "first_name": "'"${FIRST}"'",
    "last_name": "'"${LAST}"'",
    "instrument": "'"${INSTRUMENT}"'",
    "band": "'"${BAND}"'"
  }
}'
