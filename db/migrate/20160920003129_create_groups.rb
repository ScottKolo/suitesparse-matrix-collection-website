class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.integer :num_matrices
      t.text :notes

      t.timestamps
    end

    add_index :matrices, :group
  end
end
