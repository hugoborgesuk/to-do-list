class AddItemToList < ActiveRecord::Migration[7.2]
  def change
    add_column :lists, :item, :string
  end
end
