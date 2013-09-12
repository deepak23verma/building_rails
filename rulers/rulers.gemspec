# coding: utf-8
#
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rulers/version'

Gem::Specification.new do |spec|
  spec.name          = "rulers"
  spec.version       = Rulers::VERSION
  spec.authors       = ["Brian Han", "Deepak Verma"]
  spec.email         = ["brianhan87usa@gmail.com", "deepak.23.verma@gmail.com"]
  spec.description   = %q{A Rack-based Web Framework,but with extra awesome.}
  spec.summary       = %q{A Rack-based Web Framework}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_development_dependency "rspec"
  spec.add_runtime_dependency "rest-client"
  spec.add_runtime_dependency "some_gem", "1.3.0"
  spec.add_runtime_dependency "other_gem", ">0.8.2"
  spec.add_runtime_dependency "rack"
end
