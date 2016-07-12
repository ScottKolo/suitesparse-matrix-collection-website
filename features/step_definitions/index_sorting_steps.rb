When /^(?:|I )click on the table header "([^"]*)"$/ do |header|
    within(:css, "tr#sort-selector") do
        click_link(header)
    end
end

When /^(?:|I )filter matrices between "([^"]*)" and "([^"]*)" "([^"]*)"$/ do |min, max, filter_by|
    visit "/matrices/index?filterrific%5Bmin_#{filter_by}%5D=#{min}&filterrific%5Bmax_#{filter_by}%5D=#{max}"
end