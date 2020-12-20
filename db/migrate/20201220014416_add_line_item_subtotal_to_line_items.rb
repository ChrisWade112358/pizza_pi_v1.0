class AddLineItemSubtotalToLineItems < ActiveRecord::Migration[6.0]
  def change
    add_column :line_items, :line_item_subtotal, :decimal,  precision: 15, scale: 2
  end
end
