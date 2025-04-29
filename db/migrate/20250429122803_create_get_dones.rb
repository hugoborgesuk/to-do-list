class CreateGetDones < ActiveRecord::Migration[7.2]
  def change
    create_table :get_dones do |t|
      t.timestamps
    end
  end
end
