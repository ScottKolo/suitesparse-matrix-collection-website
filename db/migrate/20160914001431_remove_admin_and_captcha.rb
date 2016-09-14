class RemoveAdminAndCaptcha < ActiveRecord::Migration
  def change
    drop_table :admins
    drop_table :simple_captcha_data
  end
end
