# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'carrierwave_globalize/version'

Gem::Specification.new do |spec|
  spec.name          = 'carrierwave_globalize'
  spec.version       = CarrierwaveGlobalize::VERSION
  spec.authors       = ['Andrea Dal Ponte']
  spec.email         = ['info@andreadalponte.com']

  spec.summary       = %q{Use Globalize to manage Carrierwave translated fields}
  spec.description   = %q{Use Globalize to manage Carrierwave translated fields}
  spec.homepage      = 'https://github.com/dalpo/carrierwave_globalize'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'carrierwave'
  spec.add_dependency 'globalize'

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rails', ['>= 4.2', '< 5.1']
  spec.add_development_dependency 'rspec-rails', '~> 3.5'
  spec.add_development_dependency 'rspec-its'
  spec.add_development_dependency 'database_cleaner'
  spec.add_development_dependency 'rubocop'
end
