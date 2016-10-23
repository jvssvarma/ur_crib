class AddFacilitiesFieldsToCribs < ActiveRecord::Migration[5.0]
  def change
    add_column :cribs, :washndry, :string
    add_column :cribs, :microwave, :boolean
    add_column :cribs, :heater, :boolean
    add_column :cribs, :wifi, :boolean
    add_column :cribs, :furnish, :string
  end
end
