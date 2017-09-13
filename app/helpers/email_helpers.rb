module EmailHelpers
    def email_image_tag(image)
        attachments.inline[image] = File.read("#{Rails.root}/app/assets/images/#{image}")
        image_tag attachments.inline[image].url
    end
end