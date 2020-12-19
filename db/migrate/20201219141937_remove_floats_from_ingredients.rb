class RemoveFloatsFromIngredients < ActiveRecord::Migration[6.0]
  def change
    remove_column :ingredients, :cost, :float
    remove_column :ingredients, :amount_in_stock, :float
    remove_column :ingredients, :amount_used, :float
  end
end
