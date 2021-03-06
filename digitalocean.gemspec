# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'digitalocean/version'

Gem::Specification.new do |gem|
  gem.name          = "digitalocean"
  gem.version       = Digitalocean::VERSION
  gem.authors       = ["scottmotte"]
  gem.email         = ["scott@scottmotte.com"]
  gem.description   = %q{Ruby bindings for the Digital Ocean API.}
  gem.summary       = %q{Ruby bindings for the Digital Ocean API.}
  gem.homepage      = "http://github.com/scottmotte/digitalocean"

  gem.add_dependency "faraday"
  gem.add_dependency "faraday_middleware"
  gem.add_dependency "recursive-open-struct"
  
  gem.add_development_dependency "foreman"
  gem.add_development_dependency "pry"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
