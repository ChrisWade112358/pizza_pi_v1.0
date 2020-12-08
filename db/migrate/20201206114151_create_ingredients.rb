class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string :name, null:false, default:""
      t.float :cost, null:false, default:"0.00"
      t.float :amount_in_stock, null:false, default:"0.00" 
      t.float :amount_used
      t.date :intake
      t.date :expiration
      t.text :description

      t.timestamps
    end
  end
end
