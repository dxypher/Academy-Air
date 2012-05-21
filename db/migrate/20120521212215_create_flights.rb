class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.integer :flight_number
      t.string :departure_airport
      t.time :departure_time
      t.string :arrival_airport
      t.integer :distance
      t.integer :seats

      t.timestamps
    end
  end
end
