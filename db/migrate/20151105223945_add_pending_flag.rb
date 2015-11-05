class AddPendingFlag < ActiveRecord::Migration
  def change
    add_column :matrices, :pending, :boolean, :default => false
    add_index :matrices, :pending
  end
end
