#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
# remember to come back and put in the heroku link
URL_PATH="/expenses"
curl "${API}${URL_PATH}/${HOUSE_ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \

echo

# {"expense":{"id":4,"kind":0,"dueDate":"2017-10-03","amount":"1654.15"}}
