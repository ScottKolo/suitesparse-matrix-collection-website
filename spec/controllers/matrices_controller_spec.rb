require 'rails_helper'
require 'factories/matrix.rb'
require 'support/factory_bot.rb'

RSpec.describe MatricesController, type: :controller do

  describe "showing the index page" do

    it "should render the index view" do
      get :index
      expect(response).to render_template :index
    end

    it "should handle corrupted parameters" do
      get :index, params: {filterrific: {bogus: 1}}
      expect(response).to render_template :index
    end

  end

  describe "showing the details page" do

    it "should render the details view when the matrix exists" do
      matrix = create(:matrix, id: 1, name: 'MatrixName', group: 'GroupName')
      get :show, params: {group: 'GroupName', name: 'MatrixName'}
      expect(response).to render_template :show
    end

    it "should show a sad page when the matrix doesn't exist" do
      matrix = double('matrix1')
      allow(matrix).to receive(:id).and_return(1)
      get :show, params: {group: 'FakeGroup', name: 'FakeMatrix'}
      expect(response.status).to eq(404)
    end

  end

  describe "showing the submit new matrix page" do

    let(:submitted_matrix) { SubmittedMatrix.new({submitter_name: "John Lennon and Paul McCartney", 
                                      submitter_email: "paul@thebeatles.com", 
                                      display_email: "false",
                                      name: "Help!",
                                      kind: "Other",
                                      notes: "Help, I need somebody.\nHelp, not just anybody.\nHelp, you know I need someone.\nHelp!",
                                      submitter_url: "www.google.com",
                                      submitter_confidentiality: "true",
                                      ip: "127.0.0.1"}) }

    it "should render the matrix submission page" do
      get :new
      expect(response).to render_template :new
    end

    it 'should succeed with correct recaptcha' do
      # verify_recaptcha defaults to true in test environment
      post :submit, params: {submitted_matrix: {submitter_name: "John Lennon and Paul McCartney", 
                                      submitter_email: "paul@thebeatles.com", 
                                      display_email: "false",
                                      name: "Help!",
                                      kind: "Other",
                                      notes: "Help, I need somebody.\nHelp, not just anybody.\nHelp, you know I need someone.\nHelp!",
                                      submitter_url: "www.google.com",
                                      submitter_confidentiality: "true",
                                      ip: "127.0.0.1"}}
      response.should redirect_to(:index)
      expect(flash[:success]).to eq("Matrix submitted successfully!")
    end

    it 'should fail with incorrect recaptcha' do
      # verify_recaptcha defaults to true in test environment
      # Delete this check to have Recaptcha fail
      Recaptcha.configuration.skip_verify_env.delete("test")
      post :submit, params: {submitted_matrix: {submitter_name: "John Lennon and Paul McCartney", 
                                      submitter_email: "paul@thebeatles.com", 
                                      display_email: "false",
                                      name: "Help!",
                                      kind: "Other",
                                      notes: "Help, I need somebody.\nHelp, not just anybody.\nHelp, you know I need someone.\nHelp!",
                                      submitter_url: "www.google.com",
                                      submitter_confidentiality: "true",
                                      ip: "127.0.0.1"}}
      response.should redirect_to(submit_path)
      expect(flash[:danger]).to eq("Please verify that you are not a robot.")
    end

  end

end
