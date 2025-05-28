class AddStatusToItems < ActiveRecord::Migration[7.2]
  def change
    add_column :items, :status, :boolean, default: false
  end
end
