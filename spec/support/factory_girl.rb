require 'factory_girl'

RSpec.configure do |config|
  # Setup syntax and method usage
  config.include FactoryGirl::Syntax::Methods

  # Build and validate factories before the test, clean up after
  config.before(:suite) do
    begin
      DatabaseCleaner.start
      FactoryGirl.lint
    ensure
      DatabaseCleaner.clean
    end
  end
end
