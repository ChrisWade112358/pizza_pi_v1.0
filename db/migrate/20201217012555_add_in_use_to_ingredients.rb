class AddInUseToIngredients < ActiveRecord::Migration[6.0]
  def change
    add_column :ingredients, :in_use, :boolean, default: false
  end
end
