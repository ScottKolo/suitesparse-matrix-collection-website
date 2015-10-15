# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

matrices = [
  {:group => 'AMD',
   :name => 'G2_circuit',
   :num_rows => '150102',
   :num_cols => '150102',
   :nonzeros => '726674',
   :kind => '',
   :symmetric => 'true',
   :date => '',
   :author => 'U. Okuyucu',
   :editor => 'T. Davis',
   :notes => '',
   :matlab_url => 'http://www.cise.ufl.edu/research/sparse/mat/AMD/G2_circuit.mat',
   :rutherford_boeing_url => 'http://www.cise.ufl.edu/research/sparse/RB/AMD/G2_circuit',
   :matrix_market_url => 'http://www.cise.ufl.edu/research/sparse/MM/AMD/G2_circuit',
   :created_at => '2006',
   :updated_at => '2006'
  },
  {:group => 'Boeing',
   :name => 'bcsstk34',
   :num_rows => '588',
   :num_cols => '588',
   :nonzeros => '21418',
   :kind => '',
   :symmetric => 'true',
   :date => '',
   :author => 'R. Grimes',
   :editor => 'T. Davis',
   :notes => '',
   :matlab_url => 'http://www.cise.ufl.edu/research/sparse/mat/Boeing/bcsstk34.mat',
   :rutherford_boeing_url => 'http://www.cise.ufl.edu/research/sparse/RB/Boeing/bcsstk34',
   :matrix_market_url => 'http://www.cise.ufl.edu/research/sparse/MM/Boeing/bcsstk34',
   :created_at => '1995',
   :updated_at => '1995'
  }
]

matrices.each do |matrix|
  Matrix.create!(matrix)
end
