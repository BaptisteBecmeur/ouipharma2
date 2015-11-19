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

ActiveRecord::Schema.define(version: 20151119105013) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "annonces", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.string   "picture"
    t.string   "region"
    t.string   "department"
    t.string   "city"
    t.string   "address"
    t.integer  "turnover"
    t.string   "margin"
    t.integer  "payroll"
    t.string   "team"
    t.integer  "total_area"
    t.integer  "sales_area"
    t.string   "healthcare_setting"
    t.boolean  "parking"
    t.boolean  "walls"
    t.string   "environment"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "user_id"
  end

  create_table "favs", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "annonce_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "favs", ["annonce_id"], name: "index_favs_on_annonce_id", using: :btree
  add_index "favs", ["user_id"], name: "index_favs_on_user_id", using: :btree

  create_table "messages", force: :cascade do |t|
    t.string   "index"
    t.string   "show"
    t.string   "new"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "provider"
    t.string   "uid"
    t.string   "picture"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "token"
    t.datetime "token_expiry"
    t.string   "rpps"
    t.string   "pseudo"
    t.string   "phone_number"
    t.integer  "contribution"
    t.integer  "diploma"
    t.boolean  "first_install"
    t.string   "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "favs", "annonces"
  add_foreign_key "favs", "users"
end
