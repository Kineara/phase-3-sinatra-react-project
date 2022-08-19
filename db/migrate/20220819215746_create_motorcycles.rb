class CreateMotorcycles < ActiveRecord::Migration[6.1]
  def change
    create_table :motorcycles do |t|
      t.string :make 
      t.string :model 
      t.integer :year
      t.integer :owner_id
      t.datetime :owned_since
      t.timestamps
    end
  end
end