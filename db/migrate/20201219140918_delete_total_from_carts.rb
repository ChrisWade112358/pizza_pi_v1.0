class DeleteTotalFromCarts < ActiveRecord::Migration[6.0]
  def change
    remove_column :carts, :total, :float
  end
end
