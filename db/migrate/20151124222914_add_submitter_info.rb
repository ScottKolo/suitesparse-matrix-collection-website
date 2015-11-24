class AddSubmitterInfo < ActiveRecord::Migration
  def change
    add_column :matrices, :submitter_name, :string
    add_column :matrices, :submitter_email, :string
    add_column :matrices, :display_email, :boolean, :default => false
  end
end
