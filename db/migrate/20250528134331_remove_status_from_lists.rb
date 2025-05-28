class RemoveStatusFromLists < ActiveRecord::Migration[7.2]
  def change
    remove_column :lists, :status, :integer
  end
end
