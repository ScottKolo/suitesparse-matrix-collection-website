require 'rails_helper'
require 'factories/matrix'

RSpec.describe Matrix, type: :model do
  before(:all) do
    @matrix = FactoryGirl.create(:matrix, :group => "groupName_1", :name => "matrixName_1")
  end
  after(:all) do
      Matrix.destroy(@matrix.id)
  end

  describe "accessible attributes" do
    it "should respond to attribute queries" do
      expect(@matrix).to respond_to(:submitter_name)
      expect(@matrix).to respond_to(:submitter_email)
      expect(@matrix).to respond_to(:display_email)
      expect(@matrix).to respond_to(:name)
      expect(@matrix).to respond_to(:author)
      expect(@matrix).to respond_to(:notes)
      expect(@matrix).to respond_to(:author)
      expect(@matrix).to respond_to(:editor)
      expect(@matrix).to respond_to(:kind)
      expect(@matrix).to respond_to(:submitter_url)
    end
  end

  describe "getting correct download URL" do
    it "should provide the correct MATLAB download URL" do
        expect(@matrix.get_url(:matlab)).to eq("//www.cise.ufl.edu/research/sparse/mat/groupName_1/matrixName_1.mat")
    end
    it "should provide the correct Rutherford-Boeing download URL" do
        expect(@matrix.get_url(:rutherford_boeing)).to eq("//www.cise.ufl.edu/research/sparse/RB/groupName_1/matrixName_1.tar.gz")
    end
    it "should provide the correct Matrix Market download URL" do
        expect(@matrix.get_url(:matrix_market)).to eq("//www.cise.ufl.edu/research/sparse/MM/groupName_1/matrixName_1.tar.gz")
    end
    it "should throw an exception if an unknown format is specified" do
      expect {
        @matrix.get_url(:foo_bar)
      }.to raise_error(ArgumentError)
    end
  end
end
