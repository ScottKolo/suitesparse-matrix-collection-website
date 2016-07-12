Given /^(?:|I )check the box to filter "([^"]*)"$/ do |filter|
  find(:css, ".#{filter}-checkbox").set(true)
end

Given /^(?:|I )fill in "([^"]*)" for the input field "([^"]*)"$/ do |value, filter|
  fill_in filter, with: value
end

When /^(?:|I )search for the string "([^"]*)"$/ do |str|
    visit "/matrices/index?filterrific%5Bsearch_query%5D=#{str}"
end

When /^(?:|I )filter matrices by "([^"]*)" "([^"]*)"$/ do |filter_by, value|
    visit "/matrices/index?filterrific%5B#{filter_by}%5D=#{value}"
end