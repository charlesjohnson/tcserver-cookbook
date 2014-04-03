require 'chefspec'
require 'chefspec/berkshelf'
require 'chefspec/server'

RSpec.configure do |config|
  # Specify the Chef log_level (default: :warn)
  # config.log_level = :debug

  # Specify the path to a local JSON file with Ohai data
  # config.path = 'ohai.json'

  # Specify the operating platform to mock Ohai data from
  # config.platform = 'ubuntu'

  # Specify the operating version to mock Ohai data from
  # config.version = '12.04'

  # Use color output for RSpec
  config.color_enabled = true

  # Use documentation output formatter
  # config.formatter = :documentation
end

# Required for Growl notifications to work properly
def gem_available?(name)
  Gem::Specification.find_by_name(name)
rescue Gem::LoadError
  false
rescue
  Gem.available?(name)
end

if gem_available?('safe_yaml')
  SafeYAML::OPTIONS[:deserialize_symbols] = true
  SafeYAML::OPTIONS[:default_mode] = 'unsafe'
end
