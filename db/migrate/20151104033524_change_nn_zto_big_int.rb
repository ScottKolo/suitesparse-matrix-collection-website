class ChangeNnZtoBigInt < ActiveRecord::Migration
  def change
    change_column :matrices, :nonzeros, :bigint
    change_column :matrices, :num_explicit_zeros, :bigint
    change_column :matrices, :nnz_chol, :bigint
    change_column :matrices, :nnz_L_plus_U, :bigint
    change_column :matrices, :nnz_v, :bigint
    change_column :matrices, :nnz_r, :bigint
  end
end