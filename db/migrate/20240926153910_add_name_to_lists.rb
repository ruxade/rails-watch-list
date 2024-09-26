class AddNameToLists < ActiveRecord::Migration[7.1]
  def change
    add_column :lists, :name, :string
    add_index :lists, :name, unique: true
  end
end
