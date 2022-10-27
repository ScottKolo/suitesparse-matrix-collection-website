# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AdminNotifierMailer, type: :mailer do
  describe 'Email notification' do
    let(:matrix) do
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
    let(:mail) { AdminNotifierMailer.send_matrix_submitted_email(matrix) }

    it 'renders the subject' do
      expect(mail.subject).to eq('[SuiteSparse Matrix Collection] New Matrix Submitted!')
    end

    it 'renders the sender email' do
      expect(mail.body.encoded)
        .to match(/.*paul@thebeatles\.com.*/)
    end
  end
end
