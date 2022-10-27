# frozen_string_literal: true

require 'rails_helper'
require 'factories/collection_matrix'
require 'support/factory_bot'

RSpec.describe CollectionMatricesController, type: :controller do
  describe 'showing the index page' do
    it 'should render the index view' do
      get :index
      expect(response).to render_template :index
    end

    it 'should handle corrupted parameters' do
      get :index, params: { filterrific: { bogus: 1 } }
      expect(response).to render_template :index
    end
  end

  describe 'showing the details page' do
    it 'should render the details view when the matrix exists' do
      create(:collection_matrix, id: 1, name: 'MatrixName', group: 'GroupName')
      get :show, params: { group: 'GroupName', name: 'MatrixName' }
      expect(response).to render_template :show
    end

    it "should show a sad page when the matrix doesn't exist" do
      matrix = double('matrix1')
      allow(matrix).to receive(:id).and_return(1)
      get :show, params: { group: 'FakeGroup', name: 'FakeMatrix' }
      expect(response.status).to eq(404)
    end
  end

  describe 'showing the submit new matrix page' do
    let(:submitted_matrix) do
      SubmittedMatrix.new({ submitter_name: 'John Lennon and Paul McCartney',
                            submitter_email: 'paul@thebeatles.com',
                            display_email: 'false',
                            name: 'Help!',
                            kind: 'Other',
                            notes: "Help, I need somebody.\nHelp, not just anybody.\nHelp, you know I need someone.\nHelp!",
                            submitter_url: 'www.google.com',
                            submitter_confidentiality: 'true',
                            ip: '127.0.0.1' })
    end
    before(:all) do
      @matrix1 = FactoryBot.create(:collection_matrix,
                                   matrix_id: 1,
                                   group: 'groupA',
                                   name: 'alpha',
                                   kind: '2D mesh')
      @matrix2 = FactoryBot.create(:collection_matrix,
                                   matrix_id: 2,
                                   group: 'groupB',
                                   name: 'beta',
                                   kind: '3D mesh')
      @matrix3 = FactoryBot.create(:collection_matrix,
                                   matrix_id: 3,
                                   group: 'groupA',
                                   name: 'gamma',
                                   kind: 'zeta type')
      @matrix4 = FactoryBot.create(:collection_matrix,
                                   matrix_id: 4,
                                   group: 'groupB',
                                   name: 'delta',
                                   kind: 'subsequent kind')
      @matrix5 = FactoryBot.create(:collection_matrix,
                                   matrix_id: 5,
                                   group: 'groupC',
                                   name: 'epsilon',
                                   kind: 'duplicate kind')
      @matrix6 = FactoryBot.create(:collection_matrix,
                                   matrix_id: 6,
                                   group: 'groupC',
                                   name: 'zeta',
                                   kind: 'kind sequence')
    end
    after(:all) do
      CollectionMatrix.destroy(@matrix1.id)
      CollectionMatrix.destroy(@matrix2.id)
      CollectionMatrix.destroy(@matrix3.id)
      CollectionMatrix.destroy(@matrix4.id)
      CollectionMatrix.destroy(@matrix5.id)
      CollectionMatrix.destroy(@matrix6.id)
    end

    it 'should render the matrix submission page' do
      get :new
      expect(response).to render_template :new
    end

    it 'should succeed with correct recaptcha' do
      # verify_recaptcha defaults to true in test environment
      post :submit, params: { submitted_matrix: { submitter_name: 'John Lennon and Paul McCartney',
                                                  submitter_email: 'paul@thebeatles.com',
                                                  display_email: 'false',
                                                  name: 'Help!',
                                                  kind: 'Other',
                                                  notes: "Help, I need somebody.\nHelp, not just anybody.\nHelp, you know I need someone.\nHelp!",
                                                  submitter_url: 'www.google.com',
                                                  submitter_confidentiality: 'true',
                                                  ip: '127.0.0.1' } }
      expect(response).to redirect_to(:index)
      expect(flash[:success]).to eq('Matrix submitted successfully!')
    end

    it 'should fail with incorrect recaptcha' do
      # verify_recaptcha defaults to true in test environment
      # Delete this check to have Recaptcha fail
      Recaptcha.configuration.skip_verify_env.delete('test')
      post :submit, params: { submitted_matrix: { submitter_name: 'John Lennon and Paul McCartney',
                                                  submitter_email: 'paul@thebeatles.com',
                                                  display_email: 'false',
                                                  name: 'Help!',
                                                  kind: 'Other',
                                                  notes: "Help, I need somebody.\nHelp, not just anybody.\nHelp, you know I need someone.\nHelp!",
                                                  submitter_url: 'www.google.com',
                                                  submitter_confidentiality: 'true',
                                                  ip: '127.0.0.1' } }
      expect(response).to redirect_to(submit_path)
      expect(flash[:danger]).to eq('Please verify that you are not a robot.')
    end
  end
end
