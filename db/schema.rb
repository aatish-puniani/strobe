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

ActiveRecord::Schema.define(version: 20160415161821) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
