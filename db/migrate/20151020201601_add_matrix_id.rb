class AddMatrixId < ActiveRecord::Migration
  def change
    add_column :matrices, :matrix_id, :integer
    add_index :matrices, :matrix_id
  end
end
