# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_19_142236) do

  create_table "carts", force: :cascade do |t|
    t.boolean "delivery", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.decimal "total", precision: 15, scale: 2
    t.decimal "tax", precision: 15, scale: 2
    t.decimal "delivery_fee", precision: 15, scale: 2
    t.decimal "subtotal", precision: 15, scale: 2
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.date "intake"
    t.date "expiration"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "in_use", default: false
    t.string "unit_of_measurement"
    t.decimal "cost", precision: 15, scale: 2
    t.decimal "amount_in_stock", precision: 15, scale: 3
    t.decimal "amount_used", precision: 15, scale: 3
  end

  create_table "line_items", force: :cascade do |t|
    t.integer "menu_item_id"
    t.integer "cart_id"
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "menu_ingredient_joins", force: :cascade do |t|
    t.integer "menu_item_id"
    t.integer "ingredient_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "menu_items", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.text "description"
    t.string "category", default: "", null: false
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.decimal "price", precision: 15, scale: 2
  end

  create_table "sessions", force: :cascade do |t|
    t.string "session_id", null: false
    t.text "data"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["session_id"], name: "index_sessions_on_session_id", unique: true
    t.index ["updated_at"], name: "index_sessions_on_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.string "city"
    t.string "state"
    t.integer "zip"
    t.boolean "employee", default: false
    t.boolean "manager", default: false
    t.string "provider", limit: 50, default: "", null: false
    t.string "uid", limit: 500, default: "", null: false
    t.string "address"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
