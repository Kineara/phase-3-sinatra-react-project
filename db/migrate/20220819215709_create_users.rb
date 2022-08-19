class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :state
      t.string :city
      t.timestamps
    end
  end
end
