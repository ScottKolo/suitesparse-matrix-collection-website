require 'factory_bot'

RSpec.configure do |config|
  # Setup syntax and method usage
  config.include FactoryBot::Syntax::Methods

  # Build and validate factories before the test, clean up after
  config.before(:suite) do
    begin
      DatabaseCleaner.start
      FactoryBot.lint
    ensure
      DatabaseCleaner.clean
    end
  end
end
