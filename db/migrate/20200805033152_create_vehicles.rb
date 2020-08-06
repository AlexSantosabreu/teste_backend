class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :brand
      t.string :vehicle
      t.integer :year
      t.text :description
      t.boolean :sold

      t.timestamps
    end
  end
end
