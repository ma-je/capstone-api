#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
# remember to come back and put in the heroku link
TOKEN=BAhJIiU1YzdmOTVhNzYzY2U2YTIwMzNiODY3YTk0NWYyODA3MwY6BkVG--c8002b7a0448f98aab03f89139380518b45ab0f1


URL_PATH="/expenses"
KIND="1"
DUEDATE="2017-10-03"
AMOUNT="1654.15"
HOUSE_ID="8"
USER_ID="16"
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
      "house_id": "'"${HOUSE_ID}"'",
      "user_id": "'"${USER_ID}"'"
    }
  }'

echo
