class AdminNotifierMailer < ApplicationMailer
  default :from => ENV['EMAIL_ADDRESS']
  add_template_helper(EmailHelpers)

  # Send a notification email with the new matrix information
  def send_matrix_submitted_email(new_matrix)
    @new_matrix = new_matrix
    mail( to: ENV['DESTINATION_EMAIL'],
          subject: '[SuiteSparse Matrix Collection] New Matrix Submitted!',
          template_path: 'admin_notifier',
          template_name: 'new_matrix_email'
     )
  end
end
