class CreateVehicles < ActiveRecord::Migration[6.1]
  def change
    create_table :vehicles do |t|
      t.references :brand, null: false, foreign_key: true
      t.string :name
      t.string :color
      t.integer :qty_passengers
      t.string :plate
      t.decimal :value

      t.timestamps
    end
  end
end
