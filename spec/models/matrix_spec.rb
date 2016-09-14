require 'rails_helper'
require 'factories/matrix'

RSpec.describe Matrix, type: :model do
  describe "sorting scopes" do
    before(:all) do
        @matrix1 = FactoryGirl.create(:matrix, 
          matrix_id: 68,
          group: "a", 
          name: "b",
          num_rows: 1000,
          num_cols: 1,
          nonzeros: 1,
          kind: "2D Mesh",
          date: 1991
          )
        @matrix2 = FactoryGirl.create(:matrix, 
          matrix_id: 11,
          group: "B", 
          name: "c",
          num_rows: 2000,
          num_cols: 2,
          nonzeros: 40,
          kind: "Fancy type",
          date: 2001
          )
        @matrix3 = FactoryGirl.create(:matrix, 
          matrix_id: 10000,
          group: "Z", 
          name: "D",
          num_rows: 3000,
          num_cols: 3,
          nonzeros: 50,
          kind: "zeta type",
          date: 2015
          )
    end
    after(:all) do
        Matrix.destroy(@matrix1.id)
        Matrix.destroy(@matrix2.id)
        Matrix.destroy(@matrix3.id)
    end

    it "should be able to return a list sorted by id" do
      @matrices = Matrix.sorted_by("id_asc")
      expect(@matrices.first).to eq(@matrix2);
      expect(@matrices.last).to eq(@matrix3);
      @matrices = Matrix.sorted_by("id_desc")
      expect(@matrices.first).to eq(@matrix3);
      expect(@matrices.last).to eq(@matrix2);
    end
    it "should be able to return a list sorted by group" do
      @matrices = Matrix.sorted_by("group_asc")
      expect(@matrices.first).to eq(@matrix1);
      expect(@matrices.last).to eq(@matrix3);
      @matrices = Matrix.sorted_by("group_desc")
      expect(@matrices.first).to eq(@matrix3);
      expect(@matrices.last).to eq(@matrix1);
    end
    it "should be able to return a list sorted by name" do
      @matrices = Matrix.sorted_by("name_asc")
      expect(@matrices.first).to eq(@matrix1);
      expect(@matrices.last).to eq(@matrix3);
      @matrices = Matrix.sorted_by("name_desc")
      expect(@matrices.first).to eq(@matrix3);
      expect(@matrices.last).to eq(@matrix1);
    end
    it "should be able to return a list sorted by number of rows" do
      @matrices = Matrix.sorted_by("rows_asc")
      expect(@matrices.first).to eq(@matrix1);
      expect(@matrices.last).to eq(@matrix3);
      @matrices = Matrix.sorted_by("rows_desc")
      expect(@matrices.first).to eq(@matrix3);
      expect(@matrices.last).to eq(@matrix1);
    end
    it "should be able to return a list sorted by number of columns" do
      @matrices = Matrix.sorted_by("cols_asc")
      expect(@matrices.first).to eq(@matrix1);
      expect(@matrices.last).to eq(@matrix3);
      @matrices = Matrix.sorted_by("cols_desc")
      expect(@matrices.first).to eq(@matrix3);
      expect(@matrices.last).to eq(@matrix1);
    end
    it "should be able to return a list sorted by number of nonzeros" do
      @matrices = Matrix.sorted_by("nonzeros_asc")
      expect(@matrices.first).to eq(@matrix1);
      expect(@matrices.last).to eq(@matrix3);
      @matrices = Matrix.sorted_by("nonzeros_desc")
      expect(@matrices.first).to eq(@matrix3);
      expect(@matrices.last).to eq(@matrix1);
    end
    it "should be able to return a list sorted by kind" do
      @matrices = Matrix.sorted_by("kind_asc")
      expect(@matrices.first).to eq(@matrix1);
      expect(@matrices.last).to eq(@matrix3);
      @matrices = Matrix.sorted_by("kind_desc")
      expect(@matrices.first).to eq(@matrix3);
      expect(@matrices.last).to eq(@matrix1);
    end
    it "should be able to return a list sorted by date" do
      @matrices = Matrix.sorted_by("date_asc")
      expect(@matrices.first).to eq(@matrix1);
      expect(@matrices.last).to eq(@matrix3);
      @matrices = Matrix.sorted_by("date_desc")
      expect(@matrices.first).to eq(@matrix3);
      expect(@matrices.last).to eq(@matrix1);
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
