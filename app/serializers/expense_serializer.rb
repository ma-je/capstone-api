class ExpenseSerializer < ActiveModel::Serializer
  attributes :id, :kind, :dueDate, :amount
end
