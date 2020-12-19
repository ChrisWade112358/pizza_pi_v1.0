class AddSessionIdUserIdToCarts < ActiveRecord::Migration[6.0]
  def change
    add_column :carts, :session_id, :string
    add_column :carts, :user_id, :integer
  end
end
