class CreateAccomodations < ActiveRecord::Migration[5.1]
  def change
    create_table :accomodations do |t|
      t.string :name
      t.integer :city_id
      t.integer :country_id

      t.timestamps
    end
  end
end
