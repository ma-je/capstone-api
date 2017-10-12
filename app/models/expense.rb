# frozen_string_literal: true

class Expense < ApplicationRecord
  belongs_to :user
  # belongs_to :house

  KINDS = [
    'water',
    'sewer',
    'insurance',
    'property tax',
    'maintenance'
  ].freeze

  def bill_kind
    KINDS[self.kind]
  end
end
