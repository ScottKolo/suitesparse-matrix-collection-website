require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  describe "showing the about page" do

    it "should render the about page" do
      get :about
      expect(response).to render_template :about
    end

  end

end
