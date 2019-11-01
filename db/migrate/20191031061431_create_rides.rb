class CreateRides < ActiveRecord::Migration[5.2]
  def change
    create_table :rides do |t|
      t.references :user, foreign_key: true
      t.string :departure_city
      t.string :arrival_city
      t.text :meeting_point
      t.date :ride_date
      t.time :ride_time
      t.string :car_color
      t.string :car_make
      t.float :price

      t.timestamps
    end
  end
end
