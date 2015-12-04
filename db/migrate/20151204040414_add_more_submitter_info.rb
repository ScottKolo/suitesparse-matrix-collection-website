class AddMoreSubmitterInfo < ActiveRecord::Migration
  def change
    add_column :matrices, :submitter_url, :string
    add_column :matrices, :submitter_confidentiality, :boolean, default: false
    remove_column :matrices, :symmetric
    change_column :matrices, :svd_gap, 'decimal USING CAST(svd_gap AS decimal)'
    change_column :matrices, :numeric_symmetry, 'float USING CAST(numeric_symmetry AS float)'
    change_column :matrices, :pattern_symmetry, 'float USING CAST(pattern_symmetry AS float)'
  end
end
