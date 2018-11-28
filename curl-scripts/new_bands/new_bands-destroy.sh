#!/bin/bash

curl --include --request DELETE "http://localhost:4741/new_bands/${ID}" \
--header "Authorization: Token token=${TOKEN}" \
