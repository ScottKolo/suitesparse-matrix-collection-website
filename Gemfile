source 'https://rubygems.org'

ruby '~> 3.0'

# Need the Rails gem
gem 'rails', '~> 7.0.4'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# jquery for easier javascript
gem "jquery-rails"
# Rails no longer includes sprockets - we need to include it
gem 'sprockets-rails'
# js-cookie for modifying using cookies with JavaScript
gem 'js_cookie_rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '~> 5.1.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# Bootstrap gem for using bootstrap CSS
gem 'bootstrap'
# sassc gem for using Sass CSS
gem 'sassc-rails'
# Use haml for views
gem 'haml', '~> 5.0'
gem 'haml-rails'
gem 'haml-contrib', '~> 1.0.0.1'
# Add Font Awesome
gem 'font_awesome5_rails'
# Add pagination
gem 'will_paginate', '~> 3.3.1'
gem 'will_paginate-bootstrap-style'
gem 'json', '~> 2.3.0'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'
# Use reCaptcha to prevent spam
gem "recaptcha", require: "recaptcha/rails"
# Use Filterrific for AJAX filtering
gem 'filterrific', '~> 5.2.3'
# Generate a sitemap
gem 'sitemap_generator'

gem 'rexml'

group :development, :test do
  # Use Cucumber for BDD testing
  gem 'cucumber-rails', require: false
  # Use Database Cleaner to clear the database between tests
  gem 'database_cleaner'
  gem 'capybara', git: 'https://github.com/teamcapybara/capybara'
  gem 'rails-controller-testing'
  gem 'launchy'
  gem 'factory_bot'
  # Use rspec for lower level unit testing
  gem 'rspec-rails', '~> 4.0.0'
  # Use simplecov for coverage testing
  gem 'simplecov', '0.17.1', require: false
  gem 'byebug'
  # Use Selenium for javascript testing
  gem 'selenium-webdriver'
  gem 'webdrivers', '~> 4.4.1'
  gem 'nokogiri', '~> 1.13.2'
  # Use brakeman for security checks
  gem 'brakeman', require: false
  gem 'loofah', '>= 2.2.3'
  gem 'listen', '~> 3.3'
  gem 'sq_mini_racer'
  gem 'libv8-node'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 4.1'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :production, :production_heroku do
  # Enable better logging and support on Heroku
  gem 'rails_12factor'
  # Use Mailgun for sending notification emails
  gem 'mailgun_rails'
end

group :production_heroku, :development, :test do
  # Use postgresql as the database for Active Record
  gem 'pg'
end

group :production_heroku, :development, :test, :development do
  # Use puma webserver
  gem 'puma'
end
