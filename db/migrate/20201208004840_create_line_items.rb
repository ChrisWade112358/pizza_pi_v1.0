class CreateLineItems < ActiveRecord::Migration[6.0]
  def change
    create_table :line_items do |t|
      t.integer :menu_item_id
      t.integer :cart_id
      t.integer :quantity

      t.timestamps
    end
  end
end
