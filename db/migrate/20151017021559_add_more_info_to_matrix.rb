class AddMoreInfoToMatrix < ActiveRecord::Migration
  def change
    add_column :matrices, :description, :string
    add_column :matrices, :problem_2D_or_3D, :string
    add_column :matrices, :num_explicit_zeros, :integer
    add_column :matrices, :num_strongly_connected_components, :integer
    add_column :matrices, :num_dmperm_blocks, :integer
    add_column :matrices, :structural_full_rank, :string
    add_column :matrices, :structural_rank, :integer
    add_column :matrices, :pattern_symmetry, :string
    add_column :matrices, :numeric_symmetry, :string
    add_column :matrices, :structure, :string
    add_column :matrices, :cholesky_candidate, :string
    add_column :matrices, :positive_definite, :string
    add_column :matrices, :nnz_chol, :integer
    add_column :matrices, :cholsky_flop_count, :string
    add_column :matrices, :nnz_L_plus_U, :integer
    add_column :matrices, :nnz_v, :integer
    add_column :matrices, :nnz_r, :integer

    # SVD Statistics
    add_column :matrices, :norm, :string
    add_column :matrices, :min_singular_value, :string
    add_column :matrices, :condition_number, :string
    add_column :matrices, :svd_rank, :integer
    add_column :matrices, :sprank_minus_rank, :integer
    add_column :matrices, :null_space_dimension, :integer
    add_column :matrices, :full_numerical_rank, :string
    add_column :matrices, :svd_gap, :text

    # Fields
    add_column :matrices, :b_field, :text
    add_column :matrices, :x_field, :text
    add_column :matrices, :aux_fields, :text
  end
end
