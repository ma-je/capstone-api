#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
# remember to come back and put in the heroku link
URL_PATH="/expenses/${HOUSE_ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "expense": {
      "kind": "'"${KIND}"'",
      "dueDate": "'"${DUEDATE}"'",
      "amount": "'"${AMOUNT}"'",
      "house_id": "'${HOUSE_ID}'"
    }
  }'

echo
