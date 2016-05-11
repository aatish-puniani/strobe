# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160511003753) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assistants", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "company"
    t.string   "phone_number"
    t.string   "address"
    t.integer  "day_rate"
    t.text     "worked_with"
    t.string   "url"
    t.string   "user_photo"
    t.text     "bio"
    t.string   "twitter"
    t.string   "instagram"
    t.integer  "years_exp"
    t.boolean  "car"
    t.integer  "occupation_id"
    t.string   "blog"
    t.string   "facebook"
    t.integer  "city_id"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "assistants", ["email"], name: "index_assistants_on_email", unique: true, using: :btree
  add_index "assistants", ["reset_password_token"], name: "index_assistants_on_reset_password_token", unique: true, using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categorized_assistants", force: :cascade do |t|
    t.integer  "category_id"
    t.integer  "photo_assistant_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "categorized_gears", force: :cascade do |t|
    t.integer  "gear_id"
    t.integer  "photo_assistant_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gears", force: :cascade do |t|
    t.string   "camera"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string   "src"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "occupations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photo_assistants", force: :cascade do |t|
    t.string   "name"
    t.string   "company"
    t.string   "email"
    t.string   "phone_number"
    t.string   "address"
    t.integer  "day_rate"
    t.text     "worked_with"
    t.string   "url"
    t.string   "user_photo"
    t.text     "bio"
    t.string   "twitter"
    t.string   "instagram"
    t.integer  "years_exp"
    t.boolean  "car"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "occupation_id"
    t.string   "blog"
    t.string   "facebook"
    t.integer  "city_id"
  end

  create_table "photographers", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "company"
    t.string   "mobile_number"
    t.string   "studio_number"
    t.string   "address"
    t.text     "clients"
    t.string   "url"
    t.string   "user_photo"
    t.text     "bio"
    t.string   "twitter"
    t.string   "instagram"
    t.string   "facebook"
    t.string   "blog"
    t.integer  "years_exp"
    t.integer  "occupation_id"
    t.integer  "city_id"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "photographers", ["email"], name: "index_photographers_on_email", unique: true, using: :btree
  add_index "photographers", ["reset_password_token"], name: "index_photographers_on_reset_password_token", unique: true, using: :btree

end
