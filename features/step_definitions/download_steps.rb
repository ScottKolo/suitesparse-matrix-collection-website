# File: features/step_definitions/download_steps.rb
#
# Step definitions for forming Cucumber tests related to downloading matrix
# data files

Given /^there is a matrix with the group "(.+)" and the name "(.+)"$/ do |group, name|
  Matrix.create(group: group, name: name)
end

Then /^I should be able to download a "([^"]*)" file called "([^"]*)"$/ do |format, filename|
  expect(page).to have_link(format, href: /.*#{filename}/)
end