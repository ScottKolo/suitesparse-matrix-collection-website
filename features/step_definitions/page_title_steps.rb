require 'factory_girl'
require 'database_cleaner'
require 'database_cleaner/cucumber'

Given /^(?:|I )am on the about page$/ do
    visit "/about"
end

Given /^(?:|I )am on the Not Found page$/ do
    visit "/matrices/9072345098230958"
end

Given /^(?:|I )am on the show page for a matrix with name "([^"]*)" and group "([^"]*)"$/ do |name, group|
  visit "/matrices/#{group}/#{name}"
    #DatabaseCleaner.clean_with(:truncation)
    #matrix = FactoryGirl.create(:matrix, :id => 1, :group => group, :name => name)
    #visit "/matrices/1"
    #expect(page).to have_title "GroupName_1/MatrixName_1 | Sparse Matrix Collection"
end

Then /^the page title should be "([^"]*)"$/ do |title|
  if page.respond_to? :should
    expect(page).to have_title title
  else
    assert page.has_title?(title)
  end
end