class AdminNotifierMailer < ApplicationMailer
  default :from => ENV['EMAIL_LOGIN']

  # send a notification email with the new matrix information
  def send_matrix_submitted_email
    mail( to: ENV['DESTINATION_EMAIL'],
          subject: 'New Matrix Submitted!',
          template_path: 'admin_notifier',
          template_name: 'new_matrix_email'
     )
  end
end
