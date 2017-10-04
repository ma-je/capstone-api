#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
# remember to come back and put in the heroku link
URL_PATH="/expenses"
KIND="water"
DUEDATE="2017-10-03"
AMOUNT="1654.15"
HOUSE_ID="3"
# TOKEN="BAhJIiU2NzI0YzJlYmIwNmJkOTY2MmM4NmRiZDRkNWZkMDYzNQY6BkVG--82ea992355015918908fc2de86adcdc749098baa"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
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
