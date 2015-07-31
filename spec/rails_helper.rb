ENV['RAILS_ENV'] ||= 'test'
require 'spec_helper'

require 'engine_cart'
EngineCart.load_application!

require 'rspec/rails'
require 'capybara/rails'

RSpec.configure do |config|

  config.infer_spec_type_from_file_location!
end
