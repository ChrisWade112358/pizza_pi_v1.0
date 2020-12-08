class CreateMenuItems < ActiveRecord::Migration[6.0]
  def change
    create_table :menu_items do |t|
      t.string :name, null:false, default:""
      t.text :description
      t.float :price
      t.string :category, null:false, default:""
      t.string :image

      t.timestamps
    end
  end
end
