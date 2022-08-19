class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.datetime :date_due
      t.datetime :last_done
      t.integer :price
      t.integer :vehicle_id
      t.timestamps 
    end
  end
end
