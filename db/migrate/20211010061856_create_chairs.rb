class CreateChairs < ActiveRecord::Migration[6.0]
  def change
    create_table :chairs do |t|
      t.integer :salon_id, null: false

      t.timestamps
    end
  end
end
