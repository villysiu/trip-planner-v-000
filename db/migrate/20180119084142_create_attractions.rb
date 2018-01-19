class CreateAttractions < ActiveRecord::Migration[5.1]
  def change
    create_table :attractions do |t|
      t.string :name
      t.integer :city_id
      t.integer :country_id

      t.timestamps
    end
  end
end
