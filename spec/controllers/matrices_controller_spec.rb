require 'rails_helper'
require 'factories/matrix.rb'
require 'support/factory_girl.rb'

RSpec.describe MatricesController, type: :controller do

  describe "showing the index page" do

    it "should render the index view" do
      get :index
      expect(response).to render_template :index
    end

  end


  describe "showing the details page" do

    it "should render the details view when the matrix exists" do
      matrix = create(:matrix, :id => 1)
      get :show, params: {:id => matrix.id}
      expect(response).to render_template :show
    end

    it "should show a sad page when the matrix doesn't exist" do
      matrix = double('matrix1')
      allow(matrix).to receive(:id).and_return(1)
      get :show, params: {:id => matrix.id}
      expect(response).to render_template :not_found
    end

  end

end
