class AddFieldsToCribs < ActiveRecord::Migration[5.0]
  def change
    add_column :cribs, :room_type, :string
    add_column :cribs, :bath_type, :string
    add_column :cribs, :owner_type, :string
    add_column :cribs, :lease_type, :string
    add_column :cribs, :prefer_gender, :string
    add_column :cribs, :extras, :text
  end
end
