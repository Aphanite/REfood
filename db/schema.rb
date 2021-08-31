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

ActiveRecord::Schema.define(version: 2021_08_30_192141) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ordered_items", force: :cascade do |t|
    t.bigint "order_id", null: false
    t.bigint "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["order_id"], name: "index_ordered_items_on_order_id"
    t.index ["product_id"], name: "index_ordered_items_on_product_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "status", default: 0
    t.date "date"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "amount"
    t.string "checkout_session_id"
    t.jsonb "pick_up_slots"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.date "best_before_date"
    t.string "category"
    t.integer "amount"
    t.string "unit"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "supermarket_id", null: false
    t.integer "full_price_cents", default: 0, null: false
    t.integer "discounted_price_cents", default: 0, null: false
    t.index ["supermarket_id"], name: "index_products_on_supermarket_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.time "opens_at"
    t.time "closes_at"
    t.integer "weekday"
    t.bigint "supermarket_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["supermarket_id"], name: "index_schedules_on_supermarket_id"
  end

  create_table "supermarket_reviews", force: :cascade do |t|
    t.float "rating"
    t.text "content"
    t.bigint "supermarket_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["supermarket_id"], name: "index_supermarket_reviews_on_supermarket_id"
    t.index ["user_id"], name: "index_supermarket_reviews_on_user_id"
  end

  create_table "supermarkets", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "logo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.integer "points", default: 0
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "ordered_items", "orders"
  add_foreign_key "ordered_items", "products"
  add_foreign_key "orders", "users"
  add_foreign_key "products", "supermarkets"
  add_foreign_key "schedules", "supermarkets"
  add_foreign_key "supermarket_reviews", "supermarkets"
  add_foreign_key "supermarket_reviews", "users"
end
