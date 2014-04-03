source 'https://rubygems.org'

gem 'berkshelf',  '~> 2.0'
gem 'chef',       '~> 11.0'
gem 'chefspec',   '~> 3.0'
gem 'foodcritic', '~> 3.0'
gem 'rake'
gem 'rubocop',    '~> 0.12'

group :development do
  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-kitchen'
  gem 'guard-rubocop'
  gem 'guard-foodcritic'
  gem 'ruby_gntp'
end

group :integration do
  gem 'test-kitchen', '~> 1.2'
  gem 'kitchen-docker-api'
  gem 'kitchen-vagrant'
end
