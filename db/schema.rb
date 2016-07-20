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

ActiveRecord::Schema.define(version: 20160720020032) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ad_types", force: :cascade do |t|
    t.string "name"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
  end

  create_table "conditions", force: :cascade do |t|
    t.string "name"
  end

  create_table "municipalities", force: :cascade do |t|
    t.string  "name"
    t.integer "province_id"
    t.index ["province_id"], name: "index_municipalities_on_province_id", using: :btree
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "price"
    t.boolean  "is_active"
    t.integer  "user_id"
    t.integer  "category_id"
    t.integer  "ad_type_id"
    t.integer  "status_id"
    t.integer  "condition_id"
    t.integer  "region_id"
    t.integer  "province_id"
    t.integer  "municipality_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["ad_type_id"], name: "index_products_on_ad_type_id", using: :btree
    t.index ["category_id"], name: "index_products_on_category_id", using: :btree
    t.index ["condition_id"], name: "index_products_on_condition_id", using: :btree
    t.index ["municipality_id"], name: "index_products_on_municipality_id", using: :btree
    t.index ["province_id"], name: "index_products_on_province_id", using: :btree
    t.index ["region_id"], name: "index_products_on_region_id", using: :btree
    t.index ["status_id"], name: "index_products_on_status_id", using: :btree
    t.index ["user_id"], name: "index_products_on_user_id", using: :btree
  end

  create_table "provinces", force: :cascade do |t|
    t.string  "name"
    t.integer "region_id"
    t.index ["region_id"], name: "index_provinces_on_region_id", using: :btree
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
  end

  create_table "statuses", force: :cascade do |t|
    t.string "name"
  end

  create_table "users", force: :cascade do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "municipalities", "provinces"
  add_foreign_key "products", "ad_types"
  add_foreign_key "products", "categories"
  add_foreign_key "products", "conditions"
  add_foreign_key "products", "municipalities"
  add_foreign_key "products", "provinces"
  add_foreign_key "products", "regions"
  add_foreign_key "products", "statuses"
  add_foreign_key "products", "users"
  add_foreign_key "provinces", "regions"
end
