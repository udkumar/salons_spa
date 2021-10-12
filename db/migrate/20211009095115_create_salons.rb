class CreateSalons < ActiveRecord::Migration[6.0]
  def change
    create_table :salons do |t|
      t.string :salon_name, null: false
      t.string :gstn, null: true
      t.string :address
      t.string :pan, null: false
    
      t.datetime :opening_time, null: false
      t.datetime :closing_time, null: false

      t.timestamps
    end
  end
end
