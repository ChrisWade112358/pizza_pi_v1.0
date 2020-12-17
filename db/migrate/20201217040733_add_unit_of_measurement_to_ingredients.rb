class AddUnitOfMeasurementToIngredients < ActiveRecord::Migration[6.0]
  def change
    add_column :ingredients, :unit_of_measurement, :string
  end
end
