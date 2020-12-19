class RemoveTaxFromCarts < ActiveRecord::Migration[6.0]
  def change
    remove_column :carts, :tax, :float
  end
end
