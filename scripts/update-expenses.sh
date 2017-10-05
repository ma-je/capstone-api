#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
# remember to come back and put in the heroku link
URL_PATH="/expenses"

HOUSE_ID=7
KIND=0
AMOUNT=420.30
DUEDATE=09-11-1991
ID=16
TOKEN=BAhJIiU1YzdmOTVhNzYzY2U2YTIwMzNiODY3YTk0NWYyODA3MwY6BkVG--c8002b7a0448f98aab03f89139380518b45ab0f1

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
