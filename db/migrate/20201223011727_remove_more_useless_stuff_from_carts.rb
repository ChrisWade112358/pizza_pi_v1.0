class RemoveMoreUselessStuffFromCarts < ActiveRecord::Migration[6.0]
  def change
    remove_column :carts, :total, :decimal
    remove_column :carts, :state, :string
  end
end
