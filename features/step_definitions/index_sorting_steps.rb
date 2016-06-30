# When /^(?:|I )select "([^"]*)" from the dropdown "([^"]*)"$/ do |option, dropdown|
#   select option, from: dropdown
# end

When /^(?:|I )click on the table header "([^"]*)"$/ do |header|
    within(:css, "tr#sort-selector") do
        click_link(header)
    end
end