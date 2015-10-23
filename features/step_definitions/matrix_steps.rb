Given /the following matrices exist/ do |matrices_table|
  matrices_table.hashes.each do |matrix|
    Matrix.create!(matrix)
  end
end

Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
  index1=page.body.index(e1)
  index2=page.body.index(e2)
  index1.should<index2
end
