class RemoveDeliveryFeeFromCarts < ActiveRecord::Migration[6.0]
  def change
    remove_column :carts, :delivery_fee, :float
  end
end
