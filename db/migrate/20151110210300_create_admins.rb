class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :name
      t.string :username
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
