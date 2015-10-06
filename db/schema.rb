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

ActiveRecord::Schema.define(version: 20151006231029) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "matrices", force: :cascade do |t|
    t.string   "group"
    t.string   "name"
    t.integer  "num_rows"
    t.integer  "num_cols"
    t.integer  "nonzeros"
    t.string   "kind"
    t.boolean  "symmetric"
    t.integer  "date"
    t.string   "author"
    t.string   "editor"
    t.text     "notes"
    t.string   "matlab_url"
    t.string   "rutherford_boeing_url"
    t.string   "matrix_market_url"
    t.string   "type"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

end
