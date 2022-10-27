# frozen_string_literal: true

require 'rails_helper'
require 'factories/group'
require 'support/factory_bot'

RSpec.describe GroupsController, type: :controller do
  describe 'showing the group details page' do
    it 'should render the group details view when the group exists' do
      group = FactoryBot.create(:group, name: 'GroupName', num_matrices: 10)
      get :show, params: { group: 'GroupName' }
      expect(response).to render_template :show
    end

    it "should show a sad page when the group doesn't exist" do
      get :show, params: { group: 'FakeGroup' }
      expect(response.status).to eq(404)
    end
  end
end
