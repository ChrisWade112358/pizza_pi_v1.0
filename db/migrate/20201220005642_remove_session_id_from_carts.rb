class RemoveSessionIdFromCarts < ActiveRecord::Migration[6.0]
  def change
    remove_column :carts, :session_id, :integer
  end
end
