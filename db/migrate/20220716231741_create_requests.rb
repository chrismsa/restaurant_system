class CreateRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :requests do |t|
      t.string  :person_name, null: false
      t.integer :quantity, null: false
      t.string  :food_name, null: false
      t.decimal :food_price, null: false
      t.decimal :total_price, null: false

      t.timestamps
    end
  end
end
