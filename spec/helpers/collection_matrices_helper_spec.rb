# frozen_string_literal: true

require 'rails_helper'
require 'factories/collection_matrix'
require 'support/factory_bot'

RSpec.describe CollectionMatricesHelper, type: :helper do
  describe 'per_page helper function' do
    before(:all) do
      (1..54).each do |_i|
        FactoryBot.create(:collection_matrix)
      end
    end
    after(:all) do
      CollectionMatrix.delete_all
    end

    it "should return all the matrices when 'All' is selected" do
      params = { per_page: 'All' }
      session = {}
      expect(per_page(params, session)).to eq(54)
    end

    it 'should return 20 matrices when nothing is specified' do
      params = {}
      session = {}
      expect(per_page(params, session)).to eq(20)
    end

    it 'should use session variables when no params are specified' do
      params = {}
      session = { per_page: 30 }
      expect(per_page(params, session)).to eq(30)
    end

    it 'should use params variables first' do
      params = { per_page: 40 }
      session = { per_page: 30 }
      expect(per_page(params, session)).to eq(40)
    end
  end

  describe 'kind_submission_list helper function' do
    before(:all) do
      @kinds = kind_submission_list
    end

    it 'should not include Sequence kinds' do
      @kinds.each do |kind|
        expect(kind).not_to match(/.*Sequence.*/)
      end
    end

    it 'should not include Duplicate kinds' do
      @kinds.each do |kind|
        expect(kind).not_to match(/.*Duplicate.*/)
      end
    end

    it 'should not include Subsequent kinds' do
      @kinds.each do |kind|
        expect(kind).not_to match(/.*Subsequent.*/)
      end
    end

    it 'should titleize the kinds' do
      @kinds.each do |kind|
        expect(kind).to match(/^[0-9A-Z].*/)
      end
    end

    it 'should capitalize the D in 3D' do
      @kinds.each do |kind|
        expect(kind).not_to match(/.*3d.*/)
      end
    end

    it 'should capitalize the D in 2D' do
      @kinds.each do |kind|
        expect(kind).not_to match(/.*2d.*/)
      end
    end
  end

  describe 'tooltip_text helper function' do
    it 'should throw an exception for unrecognized properties' do |_variable|
      expect { tooltip_text(:unrecognized_property) }.to raise_error(ArgumentError, 'Unknown matrix property')
    end
  end
end
