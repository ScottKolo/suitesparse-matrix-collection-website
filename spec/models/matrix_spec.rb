require 'rails_helper'
require 'factories/matrix'

RSpec.describe Matrix, type: :model do
  describe "keyword search scopes" do
    before(:all) do
        @matrix1 = FactoryGirl.create(:matrix, 
          matrix_id: 68,
          group: "a", 
          name: "b",
          num_rows: 1000,
          num_cols: 1,
          nonzeros: 1,
          kind: "2D Mesh",
          description: "Lucy in the sky with diamonds.",
          notes: "The unique query string is 'Ringo'"
          )
        @matrix2 = FactoryGirl.create(:matrix, 
          matrix_id: 11,
          group: "Bravo", 
          name: "c",
          num_rows: 2000,
          num_cols: 2,
          nonzeros: 40,
          kind: "Fancy type",
          description: "Help! I need somebody.",
          notes: "A fancy matrix."
          )
        @matrix3 = FactoryGirl.create(:matrix, 
          matrix_id: 10000,
          group: "Z", 
          name: "Twist and Shout",
          num_rows: 3000,
          num_cols: 3,
          nonzeros: 50,
          kind: "zeta type",
          description: "Roll over Beethoven.",
          notes: ""
          )
    end
    after(:all) do
        Matrix.destroy(@matrix1.id)
        Matrix.destroy(@matrix2.id)
        Matrix.destroy(@matrix3.id)
    end

    it "should be able to return a list related to the search query" do
      @matrices = Matrix.search_query("")
      expect(@matrices).to include(@matrix1)
      expect(@matrices).to include(@matrix2)
      expect(@matrices).to include(@matrix3)
      @matrices = Matrix.search_query("Lucy")
      expect(@matrices).to include(@matrix1)
      expect(@matrices).to_not include(@matrix2)
      expect(@matrices).to_not include(@matrix3)
      @matrices = Matrix.search_query("Zeta")
      expect(@matrices).to_not include(@matrix1)
      expect(@matrices).to_not include(@matrix2)
      expect(@matrices).to include(@matrix3)
      @matrices = Matrix.search_query("bravo")
      expect(@matrices).to_not include(@matrix1)
      expect(@matrices).to include(@matrix2)
      expect(@matrices).to_not include(@matrix3)
      @matrices = Matrix.search_query("shout")
      expect(@matrices).to_not include(@matrix1)
      expect(@matrices).to_not include(@matrix2)
      expect(@matrices).to include(@matrix3)
      @matrices = Matrix.search_query("ringo")
      expect(@matrices).to include(@matrix1)
      expect(@matrices).to_not include(@matrix2)
      expect(@matrices).to_not include(@matrix3)
    end
  end

  describe "filtering scopes" do
    before(:all) do
        @matrix1 = FactoryGirl.create(:matrix, 
          matrix_id: 68,
          group: "a", 
          name: "b",
          num_rows: 1000,
          num_cols: 1,
          nonzeros: 1,
          kind: "2D Mesh",
          date: 1991,
          pattern_symmetry: 0,
          numeric_symmetry: 0,
          num_strongly_connected_components: 1,
          positive_definite: "no"
          )
        @matrix2 = FactoryGirl.create(:matrix, 
          matrix_id: 11,
          group: "B", 
          name: "c",
          num_rows: 2000,
          num_cols: 2,
          nonzeros: 40,
          kind: "Fancy type",
          date: 2001,
          pattern_symmetry: 0.5,
          numeric_symmetry: 0.5,
          num_strongly_connected_components: 10,
          positive_definite: "yes"
          )
        @matrix3 = FactoryGirl.create(:matrix, 
          matrix_id: 10000,
          group: "Z", 
          name: "D",
          num_rows: 3000,
          num_cols: 3,
          nonzeros: 50,
          kind: "zeta type",
          date: 2015,
          pattern_symmetry: 1,
          numeric_symmetry: 1,
          num_strongly_connected_components: 1000,
          positive_definite: "yes"
          )
    end
    after(:all) do
        Matrix.destroy(@matrix1.id)
        Matrix.destroy(@matrix2.id)
        Matrix.destroy(@matrix3.id)
    end

    it "should be able to filter by specific groups" do
      @matrices = Matrix.group_name("Z")
      expect(@matrices).to_not include(@matrix1)
      expect(@matrices).to_not include(@matrix2)
      expect(@matrices).to include(@matrix3)
    end
    it "should be able to return a list filtered by number of rows" do
      @matrices = Matrix.min_rows(1500)
      expect(@matrices).to_not include(@matrix1)
      expect(@matrices).to include(@matrix2)
      expect(@matrices).to include(@matrix3)
      @matrices = Matrix.max_rows(1500)
      expect(@matrices).to include(@matrix1)
      expect(@matrices).to_not include(@matrix2)
      expect(@matrices).to_not include(@matrix3)
    end
    it "should be able to return a list filtered by number of columns" do
      @matrices = Matrix.min_cols(2)
      expect(@matrices).to_not include(@matrix1);
      expect(@matrices).to include(@matrix2);
      expect(@matrices).to include(@matrix3);
      @matrices = Matrix.max_cols(1)
      expect(@matrices).to include(@matrix1);
      expect(@matrices).to_not include(@matrix2);
      expect(@matrices).to_not include(@matrix3);
    end
    it "should be able to return a list filtered by number of nonzeros" do
      @matrices = Matrix.min_nonzeros(30)
      expect(@matrices).to_not include(@matrix1);
      expect(@matrices).to include(@matrix2);
      expect(@matrices).to include(@matrix3);
      @matrices = Matrix.max_nonzeros(10)
      expect(@matrices).to include(@matrix1);
      expect(@matrices).to_not include(@matrix2);
      expect(@matrices).to_not include(@matrix3);
    end
    it "should be able to return a list filtered by pattern symmetry" do
      @matrices = Matrix.min_pattern_symmetry(0.3)
      expect(@matrices).to_not include(@matrix1);
      expect(@matrices).to include(@matrix2);
      expect(@matrices).to include(@matrix3);
      @matrices = Matrix.max_pattern_symmetry(0.2)
      expect(@matrices).to include(@matrix1);
      expect(@matrices).to_not include(@matrix2);
      expect(@matrices).to_not include(@matrix3);
    end
    it "should be able to return a list filtered by numerical symmetry" do
      @matrices = Matrix.min_numerical_symmetry(0.3)
      expect(@matrices).to_not include(@matrix1);
      expect(@matrices).to include(@matrix2);
      expect(@matrices).to include(@matrix3);
      @matrices = Matrix.max_numerical_symmetry(0.4)
      expect(@matrices).to include(@matrix1);
      expect(@matrices).to_not include(@matrix2);
      expect(@matrices).to_not include(@matrix3);
    end
    it "should be able to return a list filtered by number of strongly connected components" do
      @matrices = Matrix.min_strongly_connected_components(5)
      expect(@matrices).to_not include(@matrix1);
      expect(@matrices).to include(@matrix2);
      expect(@matrices).to include(@matrix3);
      @matrices = Matrix.max_strongly_connected_components(3)
      expect(@matrices).to include(@matrix1);
      expect(@matrices).to_not include(@matrix2);
      expect(@matrices).to_not include(@matrix3);
    end
    it "should be able to return a list filtered by positive definiteness" do
      @matrices = Matrix.positive_definite("Yes")
      expect(@matrices).to_not include(@matrix1);
      expect(@matrices).to include(@matrix2);
      expect(@matrices).to include(@matrix3);
      @matrices = Matrix.positive_definite("No")
      expect(@matrices).to include(@matrix1);
      expect(@matrices).to_not include(@matrix2);
      expect(@matrices).to_not include(@matrix3);
      @matrices = Matrix.positive_definite("Any")
      expect(@matrices).to include(@matrix1);
      expect(@matrices).to include(@matrix2);
      expect(@matrices).to include(@matrix3);
    end
  end

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
    it "should raise an exception if the sort does not exist" do
      expect{Matrix.sorted_by("fugacity_desc")}.to raise_error(ArgumentError)
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
        expect(@matrix.get_url(:matlab)).to eq("https://sparse.tamu.edu/mat/groupName_1/matrixName_1.mat")
    end
    it "should provide the correct Rutherford-Boeing download URL" do
        expect(@matrix.get_url(:rutherford_boeing)).to eq("https://sparse.tamu.edu/RB/groupName_1/matrixName_1.tar.gz")
    end
    it "should provide the correct Matrix Market download URL" do
        expect(@matrix.get_url(:matrix_market)).to eq("https://sparse.tamu.edu/MM/groupName_1/matrixName_1.tar.gz")
    end
    it "should throw an exception if an unknown format is specified" do
      expect {
        @matrix.get_url(:foo_bar)
      }.to raise_error(ArgumentError)
    end
  end
end
