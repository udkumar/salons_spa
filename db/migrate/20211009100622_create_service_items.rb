class CreateServiceItems < ActiveRecord::Migration[6.0]
  def change
    create_table :service_items do |t|
      t.string :name, null: false
      t.integer :price, null: false
      t.integer :duration
      t.integer :salon_id, null: false

      t.timestamps
    end
  end
end
