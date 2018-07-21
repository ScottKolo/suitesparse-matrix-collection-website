class AddDemicalOptionsToSymmetry < ActiveRecord::Migration[5.1]
  def change
	change_column :matrices, :pattern_symmetry, :decimal, precision: 4, scale: 3
	change_column :matrices, :numeric_symmetry, :decimal, precision: 4, scale: 3
  end
end
