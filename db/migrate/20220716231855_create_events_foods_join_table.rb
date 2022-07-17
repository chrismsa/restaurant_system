class CreateEventsFoodsJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :events, :foods

    add_index :events_foods, [:event_id, :food_id], unique: true, name: 'index_events_foods'
  end
end
