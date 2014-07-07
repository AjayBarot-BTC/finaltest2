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

ActiveRecord::Schema.define(version: 20140707110540) do

  create_table "organizations", force: true do |t|
    t.string   "org_name"
    t.string   "org_country"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projectdetails", force: true do |t|
    t.string   "proj_name"
    t.string   "proj_code"
    t.string   "proj_desc"
    t.string   "biling_type"
    t.string   "start_date"
    t.string   "dead_line_date"
    t.string   "end_date"
    t.string   "github_url"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "org_id"
  end

  create_table "searches", force: true do |t|
    t.string   "string"
    t.integer  "proj_id"
    t.integer  "org_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "searches", ["org_id"], name: "index_searches_on_org_id", unique: true
  add_index "searches", ["proj_id", "org_id"], name: "index_searches_on_proj_id_and_org_id", unique: true
  add_index "searches", ["proj_id"], name: "index_searches_on_proj_id", unique: true

end
