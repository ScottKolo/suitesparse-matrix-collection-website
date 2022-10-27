# frozen_string_literal: true

# Preview all emails at http://localhost:3000/rails/mailers/admin_notifier
class AdminNotifierPreview < ActionMailer::Preview
  def send_matrix_submitted_email
    matrix = SubmittedMatrix.new({ submitter_name: 'John Lennon and Paul McCartney',
                                   submitter_email: 'paul@thebeatles.com',
                                   display_email: 'false',
                                   name: 'Help!',
                                   kind: 'Other',
                                   notes: "Help, I need somebody.\nHelp, not just anybody.\nHelp, you know I need someone.\nHelp!",
                                   submitter_url: 'www.google.com',
                                   submitter_confidentiality: 'true',
                                   ip: '127.0.0.1' })
    AdminNotifierMailer.send_matrix_submitted_email(matrix)
  end
end
