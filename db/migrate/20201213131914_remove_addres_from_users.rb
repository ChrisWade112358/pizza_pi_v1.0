class RemoveAddresFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :addres, :string
  end
end
