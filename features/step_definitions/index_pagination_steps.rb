require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "selectors"))
require File.expand_path(File.join(File.dirname(__FILE__), "../..", "spec", "factories", "matrix.rb"))
require 'factory_girl'
require 'database_cleaner'
require 'database_cleaner/cucumber'

module WithinHelpers
  def with_scope(locator)
    locator ? within(*selector_for(locator)) { yield } : yield
  end
end
World(WithinHelpers)

Given /^(?:|I )am on the last index page$/ do
  visit path_to(index, :page => @matrix.total_pages)
end

Given /^(?:|I )am on the second index page$/ do
  visit path_to(index, :page => 2)
end

Then /^(?:|I )should see a pagination bar$/ do
  pagination_class_text = "class=\"pagination\""
  if page.respond_to? :should
    expect(page).to have_content(pagination_class_text)
  else
    assert page.has_content?(pagination_class_text)
  end
end

# Modified from the Tricycle GitHub Repo
# https://github.com/tricycle/cucumber-steps/blob/master/pagination_steps.rb
#---------- PAGINATION
# Then I should not see pagination
# Then I should see pagination
# Then I should see a link to the previous page of pagination
# Then I should see a link to the next page of pagination
# Then I should see a disabled link to the previous page of pagination
# Then I should see a disabled link to the next page of pagination
#
# When I click the next page link
#
Then /^I should not see pagination$/ do
  expect(page).to_not have_css("ul.pagination")
end

Then /^I should see pagination$/ do
  expect(page).to have_css("ul.pagination")
end

Then /^I should see a link to the next page of pagination$/ do
  within('ul.pagination') do
    expect(page).to have_css("li.next")
    expect(page).to have_css("a[rel='next']")
    expect(page).to_not have_css("li.next.disabled")
  end
end

Then /^I should see a link to the previous page of pagination$/ do
  within('ul.pagination') do
    expect(page).to have_css("li.prev")
    expect(page).to have_css("a[rel='prev']")
    expect(page).to_not have_css("li.prev.disabled")
  end
end

Then /^I should see a disabled link to the next page of pagination$/ do
  within('ul.pagination') do
    expect(page).to have_css("li.next")
    expect(page).to_not have_css("a[rel='next']")
    expect(page).to have_css("li.next.disabled")
  end
end

Then /^I should see a disabled link to the previous page of pagination$/ do
  within('ul.pagination') do
    expect(page).to have_css("li.prev")
    expect(page).to_not have_css("a[rel='prev']")
    expect(page).to have_css("li.prev.disabled")
  end
end

When /^I click the next page link$/ do
  click_link 'Next'
end

Given /^there are (.+) matrices$/ do |total_entries|
  DatabaseCleaner.clean_with(:truncation)
  FactoryGirl.create_list(:matrix, total_entries.to_i)
end

Given /^(?:|I )am on (.+) page (.+)$/ do |page_name, page_num|
    path = "#{page_name}?page=#{page_num}"
    visit path
end
