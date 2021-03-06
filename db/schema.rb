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

ActiveRecord::Schema.define(version: 20160205225413) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.integer  "question_id"
    t.integer  "resolution_id"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["question_id"], name: "index_answers_on_question_id", using: :btree
    t.index ["resolution_id"], name: "index_answers_on_resolution_id", using: :btree
  end

  create_table "questions", force: :cascade do |t|
    t.integer  "site_id"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["site_id"], name: "index_questions_on_site_id", using: :btree
  end

  create_table "resolutions", force: :cascade do |t|
    t.integer  "site_id"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "key"
    t.string   "title"
    t.index ["site_id"], name: "index_resolutions_on_site_id", using: :btree
  end

  create_table "sites", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "content"
    t.text     "keywords"
    t.text     "description"
  end

  add_foreign_key "answers", "questions"
  add_foreign_key "answers", "resolutions"
  add_foreign_key "questions", "sites"
  add_foreign_key "resolutions", "sites"
end
