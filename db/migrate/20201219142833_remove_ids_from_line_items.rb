class RemoveIdsFromLineItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :line_items, :menu_item_id, :integer
    remove_column :line_items, :cart_id, :integer
    add_reference :line_items, :menu_item, foreign_key: true, null: false
    add_reference :line_items, :cart, foreign_key: true, null: false
  end
end
