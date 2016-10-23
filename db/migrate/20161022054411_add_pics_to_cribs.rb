class AddPicsToCribs < ActiveRecord::Migration[5.0]
  def change
    add_column :cribs, :pics, :string, array: true, default: []
  end
end
