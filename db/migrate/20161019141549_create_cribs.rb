class CreateCribs < ActiveRecord::Migration[5.0]
  def change
    create_table :cribs do |t|
      t.string :title
      t.text :summary
      t.integer :rent
      t.datetime :availability

      t.timestamps
    end
  end
end
