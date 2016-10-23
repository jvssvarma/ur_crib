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

ActiveRecord::Schema.define(version: 20161022054411) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cribs", force: :cascade do |t|
    t.string   "title"
    t.text     "summary"
    t.integer  "rent"
    t.datetime "availability"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "room_type"
    t.string   "bath_type"
    t.string   "owner_type"
    t.string   "lease_type"
    t.string   "prefer_gender"
    t.text     "extras"
    t.string   "pets"
    t.string   "smoking"
    t.string   "washndry"
    t.boolean  "microwave"
    t.boolean  "heater"
    t.boolean  "wifi"
    t.string   "furnish"
    t.string   "pics",          default: [],              array: true
  end

end
