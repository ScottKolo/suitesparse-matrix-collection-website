class AddAttachmentMatrixDataFileToMatrices < ActiveRecord::Migration
  def self.up
    change_table :matrices do |t|
      t.attachment :matrix_data_file
    end
  end

  def self.down
    remove_attachment :matrices, :matrix_data_file
  end
end
