source 'https://rubygems.org'

ruby '2.3.1'

# Need the Rails gem
gem 'rails', '~> 5.0.0.1'
# Use postgresql or mysql as the database for Active Record
gem 'pg', require: false
gem 'mysql2', require: false
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0.6'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2.1'
gem 'coffee-script-source', '1.8.0'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# js-cookie for modifying using cookies with JavaScript
gem 'js_cookie_rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
gem 'jquery-turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
# Bootstrap-sass gem for using bootstrap themes
gem 'bootstrap-sass', '~>3.3.5'
# Use haml for views
gem 'haml', '~> 4.0.7'
gem 'haml-rails'
gem 'haml-contrib', '~> 1.0.0.1'
# Add Font Awesome
gem "font-awesome-rails"
# Add pagination
gem 'will_paginate', '~> 3.1.0'
gem 'will_paginate-bootstrap', '~> 1.0.1'
gem 'json'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'
# Use reCaptcha to prevent spam
gem "recaptcha", require: "recaptcha/rails"
# Use Filterrific for AJAX filtering
# gem 'filterrific'
gem 'filterrific', '~> 2.0.6', :git => 'https://github.com/ScottKolo/filterrific.git', branch: 'rails5'
# Use Slick for image carousels
gem 'jquery-slick-rails'
# Generate a sitemap
gem 'sitemap_generator'

group :development, :test do
  # Use Cucumber for BDD testing
  gem 'cucumber-rails', '~> 1.4.4', :require => false
  gem 'cucumber-rails-training-wheels'
  # Use Database Cleaner to clear the database between tests
  gem 'database_cleaner'
  gem 'capybara'
  gem 'rails-controller-testing'
  gem 'launchy'
  gem 'factory_girl'
  # Use rspec for lower level unit testing
  gem 'rspec-rails', '~> 3.5'
  # Use simplecov for coverage testing
  gem 'simplecov'
  gem 'byebug'
  # Use Poltergeist/PhantomJS for javascript testing
  gem 'poltergeist'
  # Use brakeman for security checks
  gem 'brakeman', :require => false
end

group :test do
  gem "codeclimate-test-reporter", require: nil
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :production, :production_heroku do
  # Use puma webserver for production
  gem 'puma'
  # Enable better logging and support on Heroku
  gem 'rails_12factor'
  # Use Mailgun for sending notification emails
  gem 'mailgun_rails'
end

