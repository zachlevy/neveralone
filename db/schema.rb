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

ActiveRecord::Schema.define(version: 20141108225610) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "checkins", force: true do |t|
    t.integer  "location_id"
    t.integer  "feel_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "vote"
  end

  add_index "checkins", ["feel_id"], name: "index_checkins_on_feel_id", using: :btree
  add_index "checkins", ["location_id"], name: "index_checkins_on_location_id", using: :btree

  create_table "feels", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "name"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
