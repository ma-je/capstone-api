# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: 'tom@yahoo.com', password: 'test')
User.create(email: 'dick@yahoo.com', password: 'test2')
User.create(email: 'harry@yahoo.com', password: 'test3')
House.create(address1: '143', address2: 'apt. A', street: 'Washington Street', city: 'Providence', state: 'RI', zipcode: 02903, user_id: 1)
House.create(address1: 'One', address2: 'apt. B', street: 'Peaceful Street', city: 'Providence', state: 'RI', zipcode: 02904, user_id: 2)
House.create(address1: '2', address2: 'apt. C', street: 'Love Lane', city: 'Providence', state: 'RI', zipcode: 02904, user_id: 3)
Expense.create(kind: 0, dueDate:'9/30/17', amount: 123.12,  user_id: 1, house_id: 1)
Expense.create(kind: 1, dueDate:'10/30/17', amount: 111.12, user_id: 1, house_id: 1)
Expense.create(kind: 2, dueDate:'9/15/17', amount: 1801.00,  user_id: 1, house_id: 1)
Expense.create(kind: 3, dueDate:'9/15/17', amount: 2712.30,  user_id: 1, house_id: 1)
Expense.create(kind: 4, dueDate:'9/15/17', amount: 3215.12,  user_id: 1, house_id: 1)
Expense.create(kind: 5, dueDate:'9/15/17', amount: 5231.55,  user_id: 1, house_id: 1)
