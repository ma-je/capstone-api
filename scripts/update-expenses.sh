#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
# remember to come back and put in the heroku link
URL_PATH="/expenses"

HOUSE_ID=7
TOKEN=BAhJIiU5M2M4NjEyMjU2NWRhOGU2ZDQwMzMxMTU4MWQzNTFiYQY6BkVG--78317e9e9fec012ee3a4c944e4cd765fc83ed0e4
KIND=0
AMOUNT=420.00
DUEDATE=09-11-1991
ID=9

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "expense": {
      "kind": "'"${KIND}"'",
      "dueDate": "'"${DUEDATE}"'",
      "amount": "'"${AMOUNT}"'",
      "house_id": "'"${HOUSE_ID}"'"
    }
  }'

echo
