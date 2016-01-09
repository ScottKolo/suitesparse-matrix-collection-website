Given /^(?:|I )check the box to filter "([^"]*)"$/ do |filter|
  find(:css, ".#{filter}-checkbox").set(true)
end

Given /^(?:|I )fill in "([^"]*)" for the input field "([^"]*)"$/ do |value, filter|
  fill_in filter, with: value
end