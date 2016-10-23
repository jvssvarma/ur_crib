class AddFieldsToMember < ActiveRecord::Migration[5.0]
  def change
    add_column :members, :username, :string
    add_index :members, :username, unique: true
    add_column :members, :full_name, :string
    add_column :members, :contact, :string
    add_column :members, :dob, :date
    add_column :members, :profession, :string
  end
end
