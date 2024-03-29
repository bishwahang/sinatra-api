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

ActiveRecord::Schema.define(version: 20150619140330) do

  create_table "resturants", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "logo_url"
  end

  create_table "user", force: :cascade do |t|
    t.string  "name",                     null: false
    t.string  "password",                 null: false
    t.string  "email"
    t.boolean "is_admin", default: false
  end

  create_table "users", force: :cascade do |t|
    t.string  "name",                            null: false
    t.string  "email",                           null: false
    t.string  "password_digest"
    t.string  "access_token"
    t.boolean "admin",           default: false
  end

  add_index "users", ["email"], name: "index_users_on_email"

end
