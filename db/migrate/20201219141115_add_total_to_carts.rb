class AddTotalToCarts < ActiveRecord::Migration[6.0]
  def change
    add_column :carts, :total, :decimal, precision: 15, scale: 2
  end
end
