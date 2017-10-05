class CreateExpenses < ActiveRecord::Migration[5.0]
  def change
    create_table :expenses do |t|
      t.integer :kind
      t.date :dueDate
      t.decimal :amount, :precision => 8, :scale => 2
      t.references :user, index: true, foreign_key: true, null: false
      t.references :house, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
