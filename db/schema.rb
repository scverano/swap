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

ActiveRecord::Schema.define(version: 20160812140225) do

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

  create_table "photos", force: :cascade do |t|
    t.integer  "product_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.index ["product_id"], name: "index_photos_on_product_id", using: :btree
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "price"
    t.boolean  "active",       default: true
    t.integer  "category_id"
    t.integer  "ad_type_id"
    t.integer  "status_id"
    t.integer  "condition_id"
    t.integer  "user_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["ad_type_id"], name: "index_products_on_ad_type_id", using: :btree
    t.index ["category_id"], name: "index_products_on_category_id", using: :btree
    t.index ["condition_id"], name: "index_products_on_condition_id", using: :btree
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
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "fullname"
    t.string   "provider"
    t.string   "uid"
    t.string   "image"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "municipalities", "provinces"
  add_foreign_key "photos", "products"
  add_foreign_key "products", "ad_types"
  add_foreign_key "products", "categories"
  add_foreign_key "products", "conditions"
  add_foreign_key "products", "statuses"
  add_foreign_key "products", "users"
  add_foreign_key "provinces", "regions"
end
