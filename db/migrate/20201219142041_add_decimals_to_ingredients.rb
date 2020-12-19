class AddDecimalsToIngredients < ActiveRecord::Migration[6.0]
  def change
    add_column :ingredients, :cost, :decimal, precision: 15, scale: 2
    add_column :ingredients, :amount_in_stock, :decimal, precision: 15, scale: 3
    add_column :ingredients, :amount_used, :decimal, precision: 15, scale: 3
  end
end
