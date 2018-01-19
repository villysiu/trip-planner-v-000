class CreateTrips < ActiveRecord::Migration[5.1]
  def change
    create_table :trips do |t|
      t.string :title
      t.text :description
      t.integer :duration
      t.integer :user_id

      t.timestamps
    end
  end
end
