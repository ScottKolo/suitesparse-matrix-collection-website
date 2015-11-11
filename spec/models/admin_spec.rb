require 'rails_helper'

RSpec.describe Admin, type: :model do
  it { should respond_to(:name, :username, :password) }
end
