class RemoveIdsFromMenuIngredientJoins < ActiveRecord::Migration[6.0]
  def change
    remove_column :menu_ingredient_joins, :menu_item_id, :integer
    remove_column :menu_ingredient_joins, :ingredient_id, :integer
    add_reference :menu_ingredient_joins, :menu_item, foreign_key: true, null: false
    add_reference :menu_ingredient_joins, :ingredient, foreign_key: true, null: false
  end
end
