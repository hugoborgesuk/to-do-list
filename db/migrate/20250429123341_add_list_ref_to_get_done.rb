class AddListRefToGetDone < ActiveRecord::Migration[7.2]
  def change
    add_reference :get_dones, :list, null: false, foreign_key: true
  end
end
