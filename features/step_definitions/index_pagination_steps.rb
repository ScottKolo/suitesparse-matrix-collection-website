# frozen_string_literal: true

require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), '..', 'support', 'paths'))
require File.expand_path(File.join(File.dirname(__FILE__), '..', 'support', 'selectors'))
require File.expand_path(File.join(File.dirname(__FILE__), '../..', 'spec', 'factories', 'collection_matrix.rb'))
require 'factory_bot'
require 'database_cleaner'
require 'database_cleaner/cucumber'

module WithinHelpers
  def with_scope(locator, &block)
    locator ? within(*selector_for(locator), &block) : yield
  end
end
World(WithinHelpers)

Given(/^(?:|I )am on the last index page$/) do
  visit path_to(index, page: @matrix.total_pages)
end

Given(/^(?:|I )am on the second index page$/) do
  visit path_to(index, page: 2)
end

Then(/^(?:|I )should see a pagination bar$/) do
  pagination_class_text = 'class="pagination"'
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
Then(/^I should not see pagination$/) do
  expect(page).to_not have_css('ul.pagination')
end

Then(/^I should see (\d+) pagination bars?$/) do |num_bars|
  expect(page).to have_css('ul.pagination', count: num_bars)
end

Then(/^I should see (\d+) links? to the next page of pagination$/) do |num_links|
  expect(page).to have_css('ul.pagination', count: num_links)
  expect(page).to have_css('ul.pagination li.page-item:last-child')
  expect(page).to_not have_css('ul.pagination li.page-item.disabled:last-child')
  expect(page).to have_css("a.page-link[rel='next']")
end

Then(/^I should see (\d+) links? to the previous page of pagination$/) do |num_links|
  expect(page).to have_css('ul.pagination', count: num_links)
  expect(page).to have_css('ul.pagination li.page-item:first-child')
  expect(page).to_not have_css('ul.pagination li.page-item.disabled:first-child')
  expect(page).to have_css("a.page-link[rel='prev']")
end

Then(/^I should see (\d+) disabled links? to the next page of pagination$/) do |num_links|
  expect(page).to have_css('ul.pagination', count: num_links)
  expect(page).to have_css('ul.pagination li.page-item.disabled:last-child')
  expect(page).to_not have_css("a.page-link[rel='next']")
end

Then(/^I should see (\d+) disabled links? to the previous page of pagination$/) do |num_links|
  expect(page).to have_css('ul.pagination', count: num_links)
  expect(page).to have_css('ul.pagination li.page-item.disabled:first-child')
  expect(page).to_not have_css("a.page-link[rel='prev']")
end

When(/^I click the next page link$/) do
  click_link 'Next'
end

Given(/^there are (\d+) matrices$/) do |total_entries|
  DatabaseCleaner.clean_with(:truncation)
  FactoryBot.create_list(:collection_matrix, total_entries.to_i)
end

Given(/^(?:|I )am on page number (\d+) of the (.+) page with (\d+|All) per page$/) do |page_num, _page_name, per_page|
  path = "?page=#{page_num}&per_page=#{per_page}"
  visit path
end
