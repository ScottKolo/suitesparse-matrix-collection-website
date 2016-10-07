class SubmittedMatrix
  include ActiveModel::Model
  attr_accessor :submitter_name, :submitter_email, :display_email,
                :name, :kind, :notes, :submitter_url, :submitter_confidentiality
end