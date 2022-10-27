# frozen_string_literal: true

require 'rails_helper'
require 'factories/collection_matrix'

RSpec.feature 'Page titles', type: :feature do
  scenario 'User visits the home page' do
    visit '/'
    expect(page).to have_title 'SuiteSparse Matrix Collection'
    visit '/index'
    expect(page).to have_title 'SuiteSparse Matrix Collection'
  end

  scenario 'User views a specific matrix' do
    FactoryBot.create(:collection_matrix, id: 1, group: 'GroupName_1', name: 'MatrixName_1')
    visit '/GroupName_1/MatrixName_1'
    expect(page).to have_title 'GroupName_1/MatrixName_1 | SuiteSparse Matrix Collection'
  end

  scenario 'User visits the about page' do
    visit '/about'
    expect(page).to have_title 'About | SuiteSparse Matrix Collection'
  end

  scenario 'User enters a non-existent matrix' do
    visit '/HB/fake_matrix'
    expect(page).to have_title 'Not Found | SuiteSparse Matrix Collection'
  end
end
