class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :line_item_id, null: false
      t.integer :cart_id, null: false
      t.decimal :tax, precision: 6, scale: 2
      t.string :tax_rate, precision: 6, scale: 3
      t.boolean :delivery, default: false
      t.decimal :delivery_fee, precision: 6, scale: 2
      t.decimal :subtotal, precision: 6, scale: 2, default: 0.00
      t.decimal :total, precision: 6, scale: 2, default: 0.00

      t.timestamps
    end
  end
end
