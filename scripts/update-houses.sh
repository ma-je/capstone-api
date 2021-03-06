#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
# remember to come back and put in the heroku link
URL_PATH="/houses"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "house": {
      "address1": "'"${ADDRESS1}"'",
      "address2": "'"${ADDRESS2}"'",
      "street": "'"${STREET}"'",
      "city": "'${CITY}'",
      "state": "'${STATE}'",
      "zipcode": "'${ZIPCODE}'"
    }
  }'

echo
