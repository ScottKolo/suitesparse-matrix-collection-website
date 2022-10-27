# frozen_string_literal: true

class RenameMatricesTable < ActiveRecord::Migration[6.0]
  def change
    rename_table :matrices, :collection_matrices
  end
end
