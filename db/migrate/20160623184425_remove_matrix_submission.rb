class RemoveMatrixSubmission < ActiveRecord::Migration
  def change
    remove_index :matrices, :pending

    remove_column :matrices, :pending
    remove_column :matrices, :matrix_data_file_file_name
    remove_column :matrices, :matrix_data_file_content_type
    remove_column :matrices, :matrix_data_file_file_size
    remove_column :matrices, :matrix_data_file_updated_at
    remove_column :matrices, :submitter_name
    remove_column :matrices, :submitter_email
    remove_column :matrices, :display_email
    remove_column :matrices, :submitter_url
    remove_column :matrices, :submitter_confidentiality
  end
end
