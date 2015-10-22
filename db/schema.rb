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

ActiveRecord::Schema.define(version: 20151020204741) do

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
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "description"
    t.string   "problem_2D_or_3D"
    t.integer  "num_explicit_zeros"
    t.integer  "num_strongly_connected_components"
    t.integer  "num_dmperm_blocks"
    t.string   "structural_full_rank"
    t.integer  "structural_rank"
    t.string   "pattern_symmetry"
    t.string   "numeric_symmetry"
    t.string   "structure"
    t.string   "cholesky_candidate"
    t.string   "positive_definite"
    t.integer  "nnz_chol"
    t.integer  "nnz_L_plus_U"
    t.integer  "nnz_v"
    t.integer  "nnz_r"
    t.string   "norm"
    t.string   "min_singular_value"
    t.string   "condition_number"
    t.integer  "svd_rank"
    t.integer  "sprank_minus_rank"
    t.integer  "null_space_dimension"
    t.string   "full_numerical_rank"
    t.text     "svd_gap"
    t.text     "b_field"
    t.text     "x_field"
    t.text     "aux_fields"
    t.integer  "matrix_id"
    t.string   "rb_type"
    t.string   "cholesky_flop_count"
  end

  add_index "matrices", ["matrix_id"], name: "index_matrices_on_matrix_id", using: :btree

end
