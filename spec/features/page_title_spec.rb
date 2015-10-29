require 'rails_helper'
require 'factories/matrix.rb'

RSpec.feature "Page titles", :type => :feature do
    
  scenario "User visits the home page" do
    visit '/'
    expect(page).to have_title "Sparse Matrix Collection"
    visit '/index'
    expect(page).to have_title "Sparse Matrix Collection"
  end

  scenario "User views a specific matrix" do
    matrix = FactoryGirl.create(:matrix, :id => 1, :group => "GroupName_1", :name => "MatrixName_1")
    visit "/matrices/#{matrix.id}"
    expect(page).to have_title "GroupName_1/MatrixName_1 | Sparse Matrix Collection"
  end

  scenario "User visits the about page" do
    visit "/about"
    expect(page).to have_title "About | Sparse Matrix Collection"
  end

  scenario "User enters a non-existent matrix" do
    visit "/matrices/987324"
    expect(page).to have_title "Not Found | Sparse Matrix Collection"
  end
end