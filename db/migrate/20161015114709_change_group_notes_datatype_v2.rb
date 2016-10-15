class ChangeGroupNotesDatatypeV2 < ActiveRecord::Migration[5.0]
  def change
    change_column :groups, :notes, :text, limit: 16.megabytes - 1
  end
end
