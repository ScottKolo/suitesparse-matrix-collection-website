class FixCholeskyTypo < ActiveRecord::Migration
  def change
    remove_column :matrices, :cholsky_flop_count
    add_column :matrices, :cholesky_flop_count, :string
  end
end
