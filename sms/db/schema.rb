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

ActiveRecord::Schema.define(version: 20150625053340) do

  create_table "atfcs", force: true do |t|
    t.integer  "cid"
    t.string   "description"
    t.string   "bundle"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "atfscs", force: true do |t|
    t.integer  "cid"
    t.integer  "scid"
    t.string   "description"
    t.string   "bundle"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facilities", force: true do |t|
    t.string   "fid"
    t.string   "pid"
    t.string   "facility_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menu_links", force: true do |t|
    t.string   "lid"
    t.string   "linkname"
    t.string   "bundle"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menus", force: true do |t|
    t.string   "mid"
    t.string   "menuname"
    t.string   "bundle"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "microposts", force: true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "microposts", ["user_id", "created_at"], name: "index_microposts_on_user_id_and_created_at", using: :btree

  create_table "people", force: true do |t|
    t.string   "fname"
    t.string   "mname"
    t.string   "lname"
    t.string   "address"
    t.string   "phno"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "practices", force: true do |t|
    t.string   "pid"
    t.string   "practice_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "relationships", force: true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relationships", ["followed_id"], name: "index_relationships_on_followed_id", using: :btree
  add_index "relationships", ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true, using: :btree
  add_index "relationships", ["follower_id"], name: "index_relationships_on_follower_id", using: :btree

  create_table "role_facilities", force: true do |t|
    t.string   "rid"
    t.string   "fid"
    t.string   "pid"
    t.string   "role_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "role_practices", force: true do |t|
    t.string   "rid"
    t.string   "pid"
    t.string   "role_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "rid"
    t.string   "role_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tx_classes", force: true do |t|
    t.string   "cid"
    t.string   "class_name"
    t.string   "fid"
    t.string   "pid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tx_sections", force: true do |t|
    t.string   "sid"
    t.string   "section_name"
    t.string   "fid"
    t.string   "pid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

end
