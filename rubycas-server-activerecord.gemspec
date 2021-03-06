# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubycas/server/activerecord/version'

Gem::Specification.new do |spec|
  spec.name          = "rubycas-server-activerecord"
  spec.version       = RubyCAS::Server::Core::VERSION
  spec.authors       = ["Filippos Vasilakis"]
  spec.email         = ["vasilakisfil@gmail.com"]
  spec.description   = %q{Activerecord adapter for RubyCAS Server}
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/kollegorna/rubycas-server-activerecord"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "activerecord"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.1.0"
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "rspec-its", "~> 1.1.0"
end
