class RemovePriceFromMenuItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :menu_items, :price, :float
    add_column :menu_items, :price, :decimal, precision: 15, scale: 2
  end
end
