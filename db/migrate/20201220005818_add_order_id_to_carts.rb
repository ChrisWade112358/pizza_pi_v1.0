class AddOrderIdToCarts < ActiveRecord::Migration[6.0]
  def change
    add_column :carts, :order_id, :string
  end
end
