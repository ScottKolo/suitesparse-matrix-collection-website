# frozen_string_literal: true

class SubmittedMatrix
  include ActiveModel::Model
  attr_accessor :submitter_name, :submitter_email, :display_email, :ip,
                :name, :kind, :notes, :submitter_url, :submitter_confidentiality
end
