class Expense < ApplicationRecord
belongs_to :user
belongs_to :house

KINDS = [
  "water",
  "sewer",
  "insurance",
  "property tax",
  "maintenance"
]
def bill_kind
  self.kind
  KINDS[self.kind]
end
end
