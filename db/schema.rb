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

ActiveRecord::Schema.define(version: 20161023073303) do

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
    t.integer  "member_id"
  end

  create_table "members", force: :cascade do |t|
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
    t.string   "full_name"
    t.string   "contact"
    t.date     "dob"
    t.string   "profession"
    t.string   "profile"
    t.index ["confirmation_token"], name: "index_members_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_members_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_members_on_reset_password_token", unique: true, using: :btree
    t.index ["unlock_token"], name: "index_members_on_unlock_token", unique: true, using: :btree
    t.index ["username"], name: "index_members_on_username", unique: true, using: :btree
  end

end
