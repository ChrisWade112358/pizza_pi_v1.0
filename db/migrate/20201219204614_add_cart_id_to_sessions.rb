class AddCartIdToSessions < ActiveRecord::Migration[6.0]
  def change
    add_column :sessions, :cart_id, :integer
  end
end
