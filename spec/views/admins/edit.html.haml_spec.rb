require 'rails_helper'

RSpec.describe "admins/edit", type: :view do
  before(:each) do
    @admin = assign(:admin, Admin.create!(
      :name => "MyString",
      :username => "MyString",
      :password => "foobar"
    ))
  end

  it "renders the edit admin form" do
    render

    assert_select "form[action=?][method=?]", admin_path(@admin), "post" do

      assert_select "input#admin_name[name=?]", "admin[name]"

      assert_select "input#admin_username[name=?]", "admin[username]"

      assert_select "input#admin_password[name=?]", "admin[password]"
    end
  end
end
