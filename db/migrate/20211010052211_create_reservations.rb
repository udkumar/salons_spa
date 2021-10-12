class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.integer :salon_id, null: false
      t.integer :time_slot_id, null: false
      t.integer :service_item_id, null: false
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
