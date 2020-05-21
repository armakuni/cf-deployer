# coding: utf-8
# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cf/deployer/version'

Gem::Specification.new do |spec|
  spec.name          = 'cf-deployer'
  spec.version       = CF::Deployer::VERSION
  spec.authors       = ['Benedict Dodd']
  spec.email         = ['ben.dodd@armakuni.com']
  spec.summary       = 'Deployment tooling for CF v2'
  spec.homepage      = 'https://github.com/armakuni/cf-deployer'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.test_files    = spec.files.grep(%r{^spec/})
  spec.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.1.2'
  spec.add_development_dependency 'fakefs'
  spec.add_development_dependency 'growl'
  spec.add_development_dependency 'guard'
  spec.add_development_dependency 'guard-bundler'
  spec.add_development_dependency 'guard-rake'
  spec.add_development_dependency 'guard-rubocop'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rb-fsevent'
  spec.add_development_dependency 'rb-inotify'
  spec.add_development_dependency 'rest-client'
  spec.add_development_dependency 'rspec', '~> 3.9.0'
  spec.add_development_dependency 'rubocop', '~> 0.84.0'
  spec.add_development_dependency 'thread_safe'
  spec.add_development_dependency 'timecop'
  spec.add_development_dependency 'webmock'

  spec.add_dependency 'retryable', '3.0.5'
  spec.add_dependency 'thor', '1.0.1'
end
