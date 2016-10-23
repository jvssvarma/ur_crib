class AddMoreFieldsToCribs < ActiveRecord::Migration[5.0]
  def change
    add_column :cribs, :pets, :string
    add_column :cribs, :smoking, :string
  end
end
