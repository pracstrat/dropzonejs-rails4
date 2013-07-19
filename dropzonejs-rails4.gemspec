# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dropzonejs/rails4/version'

Gem::Specification.new do |spec|
  spec.name          = "dropzonejs-rails4"
  spec.version       = Dropzonejs::Rails4::VERSION
  spec.authors       = ["Jordan"]
  spec.email         = ["jordan@51shepherd.com"]
  spec.homepage    = "https://github.com/pracstrat/dropzonejs-rails4"
  spec.summary     = %Q{Integration of Dropzonejs #{Dropzonejs::VERSION} with the Rails 4.0 asset pipeline}
  spec.description = %Q{This gem integrates Dropzonejs #{Dropzonejs::VERSION} with the Rails 4.0 asset pipeline.}
  spec.rubyforge_project = "dropzonejs-rails4"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "railties", "~> 4.0.0"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
