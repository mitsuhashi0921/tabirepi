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

ActiveRecord::Schema.define(version: 2019_10_08_114451) do

  create_table "days", force: :cascade do |t|
    t.integer "day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "trip_id"
  end

  create_table "endusers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_endusers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_endusers_on_reset_password_token", unique: true
  end

  create_table "images", force: :cascade do |t|
    t.text "name"
    t.text "image_id"
    t.integer "stay_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stays", force: :cascade do |t|
    t.string "status"
    t.string "city"
    t.string "latitude"
    t.string "longitude"
    t.string "place"
    t.text "picture"
    t.integer "money"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "state_code"
    t.integer "day_id"
    t.string "country"
    t.time "time"
  end

  create_table "trips", force: :cascade do |t|
    t.text "subtitle"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.integer "enduser_id"
  end

end
