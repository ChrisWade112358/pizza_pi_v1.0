class RemoveCartIdAgainFromLineItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :line_items, :cart_id, :string
    add_column :line_items, :cart_id, :integer
  end
end
