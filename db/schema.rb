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

ActiveRecord::Schema.define(version: 2019_02_21_101055) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "yacht_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "booking_start"
    t.date "booking_end"
    t.index ["user_id"], name: "index_bookings_on_user_id"
    t.index ["yacht_id"], name: "index_bookings_on_yacht_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "content"
    t.integer "rating"
    t.bigint "yacht_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["yacht_id"], name: "index_reviews_on_yacht_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "yachts", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "price_per_day"
    t.string "photo", default: ""
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.index ["user_id"], name: "index_yachts_on_user_id"
  end

  add_foreign_key "bookings", "users"
  add_foreign_key "bookings", "yachts"
  add_foreign_key "reviews", "yachts"
  add_foreign_key "yachts", "users"
end
