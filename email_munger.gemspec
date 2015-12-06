# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'email_munger/version'

Gem::Specification.new do |spec|
  spec.name          = 'email_munger'
  spec.version       = EmailMunger::VERSION
  spec.authors       = ['Jason Hsu']
  spec.email         = ['rubygems@jasonhsu.com']

  spec.summary       = 'Stop the spam!'
  spec.description   = 'Use this gem to encode each character in an email address.'
  spec.homepage      = 'https://github.com/jhsu802701/email_munger'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'ruby-graphviz'
  spec.add_development_dependency 'gemsurance'
  spec.add_development_dependency 'bundler-audit'
  spec.add_development_dependency 'sandi_meter'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'codeclimate-test-reporter'
end
