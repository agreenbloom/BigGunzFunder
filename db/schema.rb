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

ActiveRecord::Schema.define(version: 20150721190315) do

  create_table "pledges", force: :cascade do |t|
    t.float    "amount"
    t.integer  "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "reward_id"
  end

  add_index "pledges", ["project_id"], name: "index_pledges_on_project_id"
  add_index "pledges", ["reward_id"], name: "index_pledges_on_reward_id"

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "start_date"
    t.datetime "end_date"
    t.float    "funding_goal"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "projects", ["end_date"], name: "index_projects_on_end_date"
  add_index "projects", ["name"], name: "index_projects_on_name"
  add_index "projects", ["start_date"], name: "index_projects_on_start_date"

  create_table "rewards", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.float    "amount"
    t.integer  "limit"
    t.integer  "project_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "rewards", ["project_id"], name: "index_rewards_on_project_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                        null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_me_token"], name: "index_users_on_remember_me_token"

end
