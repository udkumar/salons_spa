class CreateTimeSlots < ActiveRecord::Migration[6.0]
  def change
    create_table :time_slots do |t|
      t.integer :salon_id, null: false
      t.integer :chair_id, null: false
      t.string :from
      t.string :to
      t.boolean :status

      t.timestamps
    end
  end
end
