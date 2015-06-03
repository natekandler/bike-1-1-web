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

ActiveRecord::Schema.define(version: 20150603003138) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: true do |t|
    t.integer  "requester_id"
    t.integer  "responder_id"
    t.text     "request_text"
    t.float    "lat"
    t.float    "lon"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events", ["requester_id"], name: "index_events_on_requester_id", using: :btree
  add_index "events", ["responder_id"], name: "index_events_on_responder_id", using: :btree

  create_table "store_profiles", force: true do |t|
    t.string   "street_address"
    t.integer  "zip"
    t.integer  "help_radius"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.string   "email",                                      null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "encrypted_password", limit: 128,             null: false
    t.string   "confirmation_token", limit: 128
    t.string   "remember_token",     limit: 128,             null: false
    t.integer  "role",                           default: 0
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

end
