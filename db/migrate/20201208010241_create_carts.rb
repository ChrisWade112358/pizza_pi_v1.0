class CreateCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :carts do |t|
      t.float :total, default: 0.0
      t.float :tax, default: 0.0
      t.float :delivery_fee, default:0.0
      t.boolean :delivery, default:false
      t.float :subtotal

      t.timestamps
    end
  end
end
