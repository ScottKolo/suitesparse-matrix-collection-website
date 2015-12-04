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

ActiveRecord::Schema.define(version: 20151204040414) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "name"
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "matrices", force: :cascade do |t|
    t.string   "group"
    t.string   "name"
    t.integer  "num_rows"
    t.integer  "num_cols"
    t.integer  "nonzeros",                          limit: 8
    t.string   "kind"
    t.integer  "date"
    t.string   "author"
    t.string   "editor"
    t.text     "notes"
    t.string   "matlab_url"
    t.string   "rutherford_boeing_url"
    t.string   "matrix_market_url"
    t.datetime "created_at",                                                  null: false
    t.datetime "updated_at",                                                  null: false
    t.string   "description"
    t.string   "problem_2D_or_3D"
    t.integer  "num_explicit_zeros",                limit: 8
    t.integer  "num_strongly_connected_components"
    t.integer  "num_dmperm_blocks"
    t.string   "structural_full_rank"
    t.integer  "structural_rank"
    t.float    "pattern_symmetry"
    t.float    "numeric_symmetry"
    t.string   "structure"
    t.string   "cholesky_candidate"
    t.string   "positive_definite"
    t.integer  "nnz_chol",                          limit: 8
    t.integer  "nnz_L_plus_U",                      limit: 8
    t.integer  "nnz_v",                             limit: 8
    t.integer  "nnz_r",                             limit: 8
    t.string   "norm"
    t.string   "min_singular_value"
    t.string   "condition_number"
    t.integer  "svd_rank"
    t.integer  "sprank_minus_rank"
    t.integer  "null_space_dimension"
    t.string   "full_numerical_rank"
    t.decimal  "svd_gap"
    t.text     "b_field"
    t.text     "x_field"
    t.text     "aux_fields"
    t.integer  "matrix_id"
    t.string   "rb_type"
    t.string   "cholesky_flop_count"
    t.boolean  "pending",                                     default: false
    t.string   "matrix_data_file_file_name"
    t.string   "matrix_data_file_content_type"
    t.integer  "matrix_data_file_file_size"
    t.datetime "matrix_data_file_updated_at"
    t.string   "submitter_name"
    t.string   "submitter_email"
    t.boolean  "display_email",                               default: false
    t.string   "submitter_url"
    t.boolean  "submitter_confidentiality",                   default: false
  end

  add_index "matrices", ["matrix_id"], name: "index_matrices_on_matrix_id", using: :btree
  add_index "matrices", ["pending"], name: "index_matrices_on_pending", using: :btree

  create_table "simple_captcha_data", force: :cascade do |t|
    t.string   "key",        limit: 40
    t.string   "value",      limit: 6
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "simple_captcha_data", ["key"], name: "idx_key", using: :btree

end
