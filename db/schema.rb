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

ActiveRecord::Schema.define(version: 20161105134651) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "examples", force: :cascade do |t|
    t.text     "text",       null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "examples", ["user_id"], name: "index_examples_on_user_id", using: :btree

  create_table "pattern_uploads", force: :cascade do |t|
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "pattern_image_file_name"
    t.string   "pattern_image_content_type"
    t.integer  "pattern_image_file_size"
    t.datetime "pattern_image_updated_at"
    t.integer  "pattern_id"
  end

  add_index "pattern_uploads", ["pattern_id"], name: "index_pattern_uploads_on_pattern_id", using: :btree

  create_table "patterns", force: :cascade do |t|
    t.string   "svg"
    t.integer  "colors"
    t.string   "quilt_size"
    t.integer  "block_size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_uploads", force: :cascade do |t|
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.integer  "project_id"
  end

  add_index "project_uploads", ["project_id"], name: "index_project_uploads_on_project_id", using: :btree

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.text     "notes"
    t.date     "start_date"
    t.date     "finish_date"
    t.boolean  "finished"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "pattern_id"
  end

  add_index "projects", ["pattern_id"], name: "index_projects_on_pattern_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "token",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["token"], name: "index_users_on_token", unique: true, using: :btree

  add_foreign_key "examples", "users"
  add_foreign_key "pattern_uploads", "patterns"
  add_foreign_key "project_uploads", "projects"
  add_foreign_key "projects", "patterns"
end
