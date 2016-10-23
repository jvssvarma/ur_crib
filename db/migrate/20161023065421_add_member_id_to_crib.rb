class AddMemberIdToCrib < ActiveRecord::Migration[5.0]
  def change
    add_column :cribs, :member_id, :integer
  end
end
