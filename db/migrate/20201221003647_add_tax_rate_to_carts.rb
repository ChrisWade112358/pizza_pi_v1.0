class AddTaxRateToCarts < ActiveRecord::Migration[6.0]
  def change
    add_column :carts, :tax_rate, :decimal
  end
end
