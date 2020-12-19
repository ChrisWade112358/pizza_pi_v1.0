class AddSubtotalToCarts < ActiveRecord::Migration[6.0]
  def change
    add_column :carts, :subtotal, :decimal, precision: 15, scale: 2
  end
end
