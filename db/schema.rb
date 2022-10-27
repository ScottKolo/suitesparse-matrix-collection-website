# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 20_221_023_234_812) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'collection_matrices', force: :cascade do |t|
    t.string 'group'
    t.string 'name'
    t.integer 'num_rows'
    t.integer 'num_cols'
    t.bigint 'nonzeros'
    t.string 'kind'
    t.integer 'date'
    t.string 'author'
    t.string 'editor'
    t.text 'notes'
    t.string 'matlab_url'
    t.string 'rutherford_boeing_url'
    t.string 'matrix_market_url'
    t.datetime 'created_at', precision: nil, null: false
    t.datetime 'updated_at', precision: nil, null: false
    t.string 'description'
    t.string 'problem_2D_or_3D'
    t.bigint 'num_explicit_zeros'
    t.integer 'num_strongly_connected_components'
    t.integer 'num_dmperm_blocks'
    t.string 'structural_full_rank'
    t.integer 'structural_rank'
    t.decimal 'pattern_symmetry', precision: 4, scale: 3
    t.decimal 'numeric_symmetry', precision: 4, scale: 3
    t.string 'structure'
    t.string 'cholesky_candidate'
    t.string 'positive_definite'
    t.string 'norm'
    t.string 'min_singular_value'
    t.string 'condition_number'
    t.integer 'svd_rank'
    t.integer 'sprank_minus_rank'
    t.integer 'null_space_dimension'
    t.string 'full_numerical_rank'
    t.decimal 'svd_gap', precision: 63
    t.text 'b_field'
    t.text 'x_field'
    t.text 'aux_fields'
    t.integer 'matrix_id'
    t.string 'rb_type'
    t.boolean 'has_graph_plot'
    t.boolean 'has_AplusAT_plot'
    t.boolean 'has_pattern_plot'
    t.boolean 'has_svd_plot'
    t.boolean 'has_gplot'
    t.boolean 'has_dmperm_plot'
    t.boolean 'has_scc_plot'
    t.text 'image_files'
    t.index ['group'], name: 'index_collection_matrices_on_group'
    t.index ['matrix_id'], name: 'index_collection_matrices_on_matrix_id'
  end

  create_table 'groups', force: :cascade do |t|
    t.string 'name'
    t.integer 'num_matrices'
    t.text 'notes'
    t.datetime 'created_at', precision: nil, null: false
    t.datetime 'updated_at', precision: nil, null: false
  end
end
