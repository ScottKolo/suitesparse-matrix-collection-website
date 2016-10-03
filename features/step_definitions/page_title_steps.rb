require 'factory_girl'
require 'database_cleaner'
require 'database_cleaner/cucumber'

Given /^(?:|I )am on the about page$/ do
  visit "/about"
end

Given /^(?:|I )am on the Not Found page$/ do
  visit "/9072345098230958"
end

Given /^(?:|I )am on the show page for a matrix with name "([^"]*)" and group "([^"]*)"$/ do |name, group|
  visit "/#{group}/#{name}"
end

Then /^the page title should be "([^"]*)"$/ do |title|
  if page.respond_to? :should
    expect(page).to have_title title
  else
    assert page.has_title?(title)
  end
end