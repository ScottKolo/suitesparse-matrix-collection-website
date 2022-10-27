# frozen_string_literal: true

When('I follow {string} in the navigation bar') do |string|
  within('#navbar') do
    click_link(string)
  end
end

Then('I should see {string} in the navigation bar') do |string|
  page.within('#navbar') do
    expect(page).to have_link(string)
  end
end
