Then /the "(.*)" property should be "(.*)"$/ do |property, value|
    expect(find('tr', text: property)).to have_content(value)
end