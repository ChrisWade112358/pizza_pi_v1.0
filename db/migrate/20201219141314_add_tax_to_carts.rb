class AddTaxToCarts < ActiveRecord::Migration[6.0]
  def change
    add_column :carts, :tax, :decimal, precision: 15, scale: 2
  end
end
