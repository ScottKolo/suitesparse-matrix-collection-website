class RemoveOrderingStatistics < ActiveRecord::Migration
  def change
    remove_column :matrices, :nnz_chol
    remove_column :matrices, :nnz_L_plus_U
    remove_column :matrices, :nnz_v
    remove_column :matrices, :nnz_r
    remove_column :matrices, :cholesky_flop_count
  end
end
