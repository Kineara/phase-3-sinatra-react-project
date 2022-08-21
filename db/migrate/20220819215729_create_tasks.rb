class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.string :category
      t.string :date_due
      t.integer :vehicle_id
      t.boolean :completed
      t.timestamps 
    end
  end
end
