
Given /^there is a matrix with the group "(.+)" and the name "(.+)"$/ do |group, name|
  Matrix.create(group: group, name: name)
end

Then /^I should receive a(?: "([^"]*)") file$/ do |file|
  pending
  #result = page.response_headers['Content-Type'].should == "application/octet-stream"
  #if result
    #result = page.response_headers['Content-Disposition'].should =~ /#{file}/
  #end
  #result
end
