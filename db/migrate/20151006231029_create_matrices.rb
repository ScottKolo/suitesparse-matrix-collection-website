class CreateMatrices < ActiveRecord::Migration
  def change
    create_table :matrices do |t|
      t.string :group
      t.string :name
      t.integer :num_rows
      t.integer :num_cols
      t.integer :nonzeros
      t.string :kind
      t.boolean :symmetric
      t.integer :date
      t.string :author
      t.string :editor
      t.text :notes
      t.string :matlab_url
      t.string :rutherford_boeing_url
      t.string :matrix_market_url
      t.string :type

      t.timestamps null: false
    end
  end
end
