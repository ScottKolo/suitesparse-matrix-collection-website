require 'rails_helper'
require 'factories/matrix'

RSpec.describe Matrix, type: :model do
  describe "it does nothing" do
    it "dummy test" do
      expect(true).to eq(true)
    end
  end

  describe "getting correct download URL" do
    before(:all) do
        @matrix = FactoryGirl.create(:matrix, :group => "groupName_1", :name => "matrixName_1")
    end
    after(:all) do
        Matrix.destroy(@matrix.id)
    end

    it "should provide the correct MATLAB download URL" do
        expect(@matrix.get_url(:matlab)).to eq("https://www.cise.ufl.edu/research/sparse/mat/groupName_1/matrixName_1.mat")
    end
    it "should provide the correct Rutherford-Boeing download URL" do
        expect(@matrix.get_url(:rutherford_boeing)).to eq("https://www.cise.ufl.edu/research/sparse/RB/groupName_1/matrixName_1.tar.gz")
    end
    it "should provide the correct Matrix Market download URL" do
        expect(@matrix.get_url(:matrix_market)).to eq("https://www.cise.ufl.edu/research/sparse/MM/groupName_1/matrixName_1.tar.gz")
    end
    it "should throw an exception if an unknown format is specified" do
      expect {
        @matrix.get_url(:foo_bar)
      }.to raise_error(ArgumentError)
    end
  end
end
