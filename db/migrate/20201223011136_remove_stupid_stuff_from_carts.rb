class RemoveStupidStuffFromCarts < ActiveRecord::Migration[6.0]
  def change
    remove_column :carts, :delivery, :boolean
    remove_column :carts, :delivery_fee, :decimal
    remove_column :carts, :tax, :decimal
    remove_column :carts, :tax_rate, :decimal
    remove_column :carts, :subtotal, :decimal
    remove_column :carts, :first_name, :string
    remove_column :carts, :last_name, :string
    remove_column :carts, :address, :string
    remove_column :carts, :city, :string
    remove_column :carts, :zip, :integer
    remove_column :carts, :phone_number, :string
    remove_column :carts, :order_id, :string
  end
end
