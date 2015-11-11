class Admin < ActiveRecord::Base
  has_secure_password
  validates :username, presence: true, format: { with: /\A\w*\z/,
    message: "only allows letters, numbers, and underscores" }
  validates :name, presence: true
end
