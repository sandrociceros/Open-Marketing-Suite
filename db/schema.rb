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

ActiveRecord::Schema.define(version: 20150809031856) do

  create_table "forms_field_types", force: :cascade do |t|
    t.string   "name"
    t.string   "shortcode"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "forms_questions", force: :cascade do |t|
    t.text     "title"
    t.integer  "position"
    t.integer  "set_id"
    t.integer  "field_type_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "placeholder_text"
  end

  add_index "forms_questions", ["field_type_id"], name: "index_forms_questions_on_field_type_id"
  add_index "forms_questions", ["set_id"], name: "index_forms_questions_on_set_id"

  create_table "forms_sets", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
