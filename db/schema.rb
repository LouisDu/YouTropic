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

ActiveRecord::Schema.define(version: 20160309133239) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.integer  "place_id"
    t.integer  "user_id"
    t.date     "checkin"
    t.date     "checkout"
    t.integer  "bill"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.integer  "nb_of_traveller"
    t.boolean  "validated",       default: false
  end

  add_index "bookings", ["place_id"], name: "index_bookings_on_place_id", using: :btree
  add_index "bookings", ["user_id"], name: "index_bookings_on_user_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean  "mer"
    t.boolean  "terre"
    t.boolean  "air"
  end

  create_table "pictures", force: :cascade do |t|
    t.string   "name"
    t.integer  "place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "photo"
  end

  add_index "pictures", ["place_id"], name: "index_pictures_on_place_id", using: :btree

  create_table "places", force: :cascade do |t|
    t.string   "name"
    t.integer  "category_id"
    t.integer  "capacity"
    t.integer  "price"
    t.string   "street"
    t.string   "city"
    t.string   "zipcode"
    t.string   "country"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "places", ["category_id"], name: "index_places_on_category_id", using: :btree
  add_index "places", ["user_id"], name: "index_places_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.string   "photo"
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "bookings", "places"
  add_foreign_key "bookings", "users"
  add_foreign_key "pictures", "places"
  add_foreign_key "places", "categories"
  add_foreign_key "places", "users"
end
