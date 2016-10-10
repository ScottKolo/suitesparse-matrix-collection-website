module EmailHelpers
    def email_image_tag(image)
        attachments[image] = File.read("#{Rails.root}/app/assets/images/#{image}")
        image_tag attachments[image].url
    end
end