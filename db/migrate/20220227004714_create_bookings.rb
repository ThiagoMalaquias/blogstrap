class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :vehicle, null: false, foreign_key: true
      t.references :client, null: false, foreign_key: true
      t.integer :waiting_time
      t.decimal :total_value
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :target_payment

      t.timestamps
    end
  end
end
