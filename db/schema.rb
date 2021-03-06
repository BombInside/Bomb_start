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

ActiveRecord::Schema.define(version: 20150822083225) do

  create_table "posts", force: :cascade do |t|
    t.string   "name",                limit: 255
    t.text     "description",         limit: 65535
    t.integer  "author_id",           limit: 4
    t.boolean  "moderated"
    t.boolean  "posted"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "poster_file_name",    limit: 255
    t.string   "poster_content_type", limit: 255
    t.integer  "poster_file_size",    limit: 4
    t.datetime "poster_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",               limit: 255
    t.string   "name",                limit: 255
    t.date     "b_date"
    t.boolean  "admin"
    t.boolean  "moderator"
    t.string   "country",             limit: 255
    t.string   "city",                limit: 255
    t.string   "shcool",              limit: 255
    t.string   "college",             limit: 255
    t.string   "job",                 limit: 255
    t.boolean  "sex"
    t.string   "company",             limit: 255
    t.text     "bio",                 limit: 65535
    t.string   "crypted_password",    limit: 255
    t.string   "password_salt",       limit: 255
    t.string   "persistence_token",   limit: 255
    t.string   "single_access_token", limit: 255
    t.string   "perishable_token",    limit: 255
    t.integer  "login_count",         limit: 4,     default: 0,     null: false
    t.integer  "failed_login_count",  limit: 4,     default: 0,     null: false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip",    limit: 255
    t.string   "last_login_ip",       limit: 255
    t.boolean  "active",                            default: false
    t.boolean  "approved",                          default: false
    t.boolean  "confirmed",                         default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
