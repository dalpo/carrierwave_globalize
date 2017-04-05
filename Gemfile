source 'https://rubygems.org'

# Specify your gem's dependencies in carrierwave_globalize.gemspec
gemspec

gem 'activerecord-jdbcsqlite3-adapter', platform: :jruby
gem 'sqlite3', platforms: [:ruby, :rbx]
gem 'pry'
gem 'carrierwave'

platforms :rbx do
  gem 'rubysl', '~> 2.0'
  gem 'rubinius-developer_tools'
end

group :debug do
  gem 'pry-byebug'
end

group :test do
  gem 'simplecov'
  gem 'codeclimate-test-reporter', '~> 1.0.0'
end
