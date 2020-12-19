class RemoveSubtotalFromCarts < ActiveRecord::Migration[6.0]
  def change
    remove_column :carts, :subtotal, :float
  end
end
