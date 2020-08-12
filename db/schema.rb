# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_12_045147) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "gift_memos", force: :cascade do |t|
    t.bigint "precious_person_id"
    t.string "memo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["precious_person_id"], name: "index_gift_memos_on_precious_person_id"
  end

  create_table "gifts", force: :cascade do |t|
    t.string "name"
    t.decimal "price", precision: 15, scale: 5
    t.integer "brand_id"
    t.string "brand_name"
    t.string "image_file_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "category_id"
    t.string "category_name"
    t.string "brand_image_path"
    t.text "explain_text"
  end

  create_table "precious_days", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "precious_person_id"
    t.string "name"
    t.time "precious_date"
    t.string "image_file_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "scene_id"
    t.index ["precious_person_id"], name: "index_precious_days_on_precious_person_id"
    t.index ["user_id"], name: "index_precious_days_on_user_id"
  end

  create_table "precious_people", force: :cascade do |t|
    t.bigint "user_id"
    t.string "name"
    t.integer "relation_category_id"
    t.string "image_file_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_precious_people_on_user_id"
  end

  create_table "purchase_records", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "gift_id"
    t.datetime "purchased_on"
    t.integer "quantity"
    t.string "cancel_flug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gift_id"], name: "index_purchase_records_on_gift_id"
    t.index ["user_id"], name: "index_purchase_records_on_user_id"
  end

  create_table "ranking_orders", force: :cascade do |t|
    t.bigint "gift_id"
    t.integer "category_id"
    t.string "category_name"
    t.integer "rank"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gift_id"], name: "index_ranking_orders_on_gift_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "gender"
    t.string "address"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "postcode"
    t.string "phone_number"
    t.date "birthday"
  end

  add_foreign_key "gift_memos", "precious_people"
  add_foreign_key "precious_days", "precious_people"
  add_foreign_key "precious_days", "users"
  add_foreign_key "precious_people", "users"
  add_foreign_key "purchase_records", "gifts"
  add_foreign_key "purchase_records", "users"
  add_foreign_key "ranking_orders", "gifts"
end
