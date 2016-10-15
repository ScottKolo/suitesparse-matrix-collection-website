class ChangeGroupNotesDatatype < ActiveRecord::Migration[5.0]
  def change
    change_column :groups, :notes, :text, :limit => 16777215
  end
end
