class CreateMenuIngredientJoins < ActiveRecord::Migration[6.0]
  def change
    create_table :menu_ingredient_joins do |t|
      t.integer :menu_item_id
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
