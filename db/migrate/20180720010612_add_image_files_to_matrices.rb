class AddImageFilesToMatrices < ActiveRecord::Migration[5.1]
  def change
  	add_column :matrices, :image_files, :text
  end
end
