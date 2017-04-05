# frozen_string_literal: true
source 'https://rubygems.org'

# Specify your gem's dependencies in carrierwave_globalize.gemspec
gemspec

gem 'activerecord-jdbcsqlite3-adapter', platform: :jruby
gem 'carrierwave'
gem 'pry'
gem 'sqlite3', platforms: [:ruby, :rbx]

platforms :rbx do
  gem 'rubinius-developer_tools'
  gem 'rubysl', '~> 2.0'
end

group :debug do
  gem 'pry-byebug'
end

group :test do
  gem 'codeclimate-test-reporter', '~> 1.0.0'
  gem 'simplecov'
end
