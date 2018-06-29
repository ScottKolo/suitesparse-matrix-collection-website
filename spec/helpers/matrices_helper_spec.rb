require 'rails_helper'
require 'factories/matrix.rb'
require 'support/factory_bot.rb'

RSpec.describe MatricesHelper, type: :helper do

  describe "per_page helper function" do
    before(:all) do
        for i in 1..54
          FactoryBot.create(:matrix)
        end
    end
    after(:all) do
        Matrix.delete_all
    end

    it "should return all the matrices when 'All' is selected" do
      params = {per_page: "All"}
      session = {}
      expect(per_page(params, session)).to eq(54)
    end

    it "should return 20 matrices when nothing is specified" do
      params = {}
      session = {}
      expect(per_page(params, session)).to eq(20)
    end

    it "should use session variables when no params are specified" do
      params = {}
      session = {per_page: 30}
      expect(per_page(params, session)).to eq(30)
    end

    it "should use params variables first" do
      params = {per_page: 40}
      session = {per_page: 30}
      expect(per_page(params, session)).to eq(40)
    end

  end

end
