class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :year
      t.string :make
      t.string :model
      t.string :body_style
      t.string :mileage
      t.string :transmission
      t.text :condition
      t.string :fuel_economy
      t.string :engine_size
      t.string :cylinders
      t.string :power
      t.string :fuel_type
      t.string :vin

      t.timestamps null: false
    end
  end
end
