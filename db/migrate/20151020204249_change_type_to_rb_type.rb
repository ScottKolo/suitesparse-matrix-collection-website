class ChangeTypeToRbType < ActiveRecord::Migration
  def change
    remove_column :matrices, :type
    add_column :matrices, :rb_type, :string
  end
end
