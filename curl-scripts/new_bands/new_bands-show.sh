#!/bin/bash

curl --include --request GET "http://localhost:4741/new_bands/${ID}" \
--header "Authorization: Token token=${TOKEN}" \
