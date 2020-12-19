class AddDeliveryFeeToCarts < ActiveRecord::Migration[6.0]
  def change
    add_column :carts, :delivery_fee, :decimal, precision: 15, scale: 2
  end
end
