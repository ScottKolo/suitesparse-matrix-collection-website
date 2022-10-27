# frozen_string_literal: true

require 'database_cleaner'
require 'database_cleaner/cucumber'
require 'factory_bot'
require File.expand_path(File.join(File.dirname(__FILE__), '../..', 'spec', 'factories', 'group.rb'))

Given(/^the following groups? exists?/) do |groups_table|
  groups_table.hashes.each do |group|
    Group.create!(group)
  end
end

Given(/^there are (\d+) groups$/) do |num_groups|
  (1..(num_groups.to_i)).each do |i|
    FactoryBot.create(:group, name: "Group#{i}")
    FactoryBot.create(:collection_matrix, id: i, group: "Group#{i}", name: "Matrix#{i}")
  end
end
