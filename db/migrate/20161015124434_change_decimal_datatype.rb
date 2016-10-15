class ChangeDecimalDatatype < ActiveRecord::Migration[5.0]
  def change
    change_column :matrices, :svd_gap, :decimal
    change_column :matrices, :numeric_symmetry, :decimal
    change_column :matrices, :pattern_symmetry, :decimal
  end
end
