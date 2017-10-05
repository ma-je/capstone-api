class CreateHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :houses do |t|
      t.string :address1
      t.string :address2
      t.string :street
      t.string :city
      t.string :state
      t.integer :zipcode
      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
