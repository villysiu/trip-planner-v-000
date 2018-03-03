class AddTypeIdToAttractions < ActiveRecord::Migration[5.1]
  def change
    add_column :attractions, :type_id, :integer
  end
end
