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

ActiveRecord::Schema.define(version: 20130629150853) do

  create_table "clients", force: true do |t|
    t.string   "name",                                null: false
    t.string   "reg_name_1"
    t.string   "reg_name_2"
    t.string   "grade"
    t.string   "tel"
    t.string   "website"
    t.string   "address"
    t.integer  "employee"
    t.decimal  "turnover",   precision: 10, scale: 0
    t.text     "intro"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clients", ["name"], name: "index_clients_on_name", unique: true, using: :btree

  create_table "products", force: true do |t|
    t.string   "name"
    t.string   "shortname"
    t.string   "shortcode"
    t.decimal  "bid_price",   precision: 8, scale: 2
    t.decimal  "final_price", precision: 8, scale: 2
    t.text     "intro"
    t.string   "factory"
    t.string   "spec"
    t.string   "unit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "products", ["name"], name: "index_products_on_name", using: :btree
  add_index "products", ["shortcode"], name: "index_products_on_shortcode", unique: true, using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",           null: false
    t.string   "encrypted_password",     default: "",           null: false
    t.string   "username",               default: "",           null: false
    t.string   "role",                   default: ""
    t.string   "realname",               default: ""
    t.date     "birthdate",              default: '1970-01-01'
    t.integer  "gender",                 default: 2
    t.string   "intro"
    t.string   "blood_type"
    t.string   "live_prev"
    t.string   "home_prev"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "authentication_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["authentication_token"], name: "index_users_on_authentication_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
