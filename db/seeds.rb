# Build groups array
puts "Building groups array"
groups = []
groups_path = Rails.root.join('db', 'collection_data', 'groups', '**', '*')
group_files = Dir.glob(groups_path)

group_files.each do |file|
	groups.push(eval(File.open(file, "r").read))
end

# Insert groups into database
puts "Inserting groups into database"
groups.each do |group|
	puts "Inserting " + group[:name]
  	Group.create!(group)
end
puts "Completed inserting groups into database"

# Build matrices array
puts "Building matrices array"
matrices = []
matrix_path = Rails.root.join('db', 'collection_data', 'matrices', '**', '*')
matrix_files = Dir.glob(matrix_path).reject { |f| File.directory? f }

matrix_files.each do |file|
	matrices.push(eval(File.open(file, "r").read))
end

# Insert matrices into database
puts "Inserting matrices into database"
matrices.each do |matrix|
	puts "Inserting " + matrix[:name]
  	CollectionMatrix.create!(matrix)
end
puts "Completed inserting matrices into database"