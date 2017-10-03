# frozen_string_literal: true
class User < ApplicationRecord
  include Authentication
  has_many :houses, dependent: :destroy
  has_many :expenses, dependent: :destroy
end
