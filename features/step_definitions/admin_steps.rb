Given /the following admins exist/ do |admins_table|
  admins_table.hashes.each do |admin|
    Admin.create!(admin)
  end
end
When /^I login as "(.*)" with the password "(.*)"$/ do |username, password|
      @admin = Admin.find_by(username: username).try(:authenticate,password)
      if @admin
        session[:admin_id]=@admin.id
      end
end
Given /^(?:|I )am not an admin$/ do
  visit '/logout'
end
