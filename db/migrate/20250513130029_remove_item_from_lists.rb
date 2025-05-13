class RemoveItemFromLists < ActiveRecord::Migration[7.2]
  def change
    remove_column :lists, :item, :string
  end
end
