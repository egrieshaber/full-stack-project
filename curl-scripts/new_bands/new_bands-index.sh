#!/bin/bash

curl --include --request GET "http://localhost:4741/new_bands" \
--header "Authorization: Token token=${TOKEN}"
