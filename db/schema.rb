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

ActiveRecord::Schema.define(version: 2020_06_27_172834) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "group_memberships", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "group_id", null: false
    t.integer "role"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["group_id"], name: "index_group_memberships_on_group_id"
    t.index ["user_id"], name: "index_group_memberships_on_user_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "join_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "lunch_dishes", id: false, force: :cascade do |t|
    t.bigint "lunch_id"
    t.bigint "dish_id"
    t.index ["lunch_id"], name: "index_lunch_dishes_on_lunch_id"
  end

  create_table "menu_item_orders", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "group_id", null: false
    t.bigint "menu_item_id", null: false
    t.bigint "weekly_menu_id", null: false
    t.integer "servings_count"
    t.date "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["group_id"], name: "index_menu_item_orders_on_group_id"
    t.index ["user_id"], name: "index_menu_item_orders_on_user_id"
    t.index ["weekly_menu_id"], name: "index_menu_item_orders_on_weekly_menu_id"
  end

  create_table "menu_items", force: :cascade do |t|
    t.string "type"
    t.integer "category"
    t.string "title"
    t.integer "grams"
    t.string "description"
    t.integer "price_cents", default: 0, null: false
    t.string "price_currency", default: "USD", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "menu_items_weekly_menus", id: false, force: :cascade do |t|
    t.bigint "menu_item_id", null: false
    t.bigint "weekly_menu_id", null: false
    t.index ["weekly_menu_id"], name: "index_menu_items_weekly_menus_on_weekly_menu_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.string "phone"
    t.integer "role"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "weekly_menus", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
  end

  add_foreign_key "group_memberships", "groups"
  add_foreign_key "group_memberships", "users"
  add_foreign_key "menu_item_orders", "groups"
  add_foreign_key "menu_item_orders", "menu_items"
  add_foreign_key "menu_item_orders", "users"
  add_foreign_key "menu_item_orders", "weekly_menus"
end
