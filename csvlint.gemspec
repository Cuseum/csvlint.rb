# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'csvlint/version'

Gem::Specification.new do |spec|
  spec.name          = "csvlint"
  spec.version       = Csvlint::VERSION
  spec.authors       = ["pezholio"]
  spec.email         = ["pezholio@gmail.com"]
  spec.description   = %q{CSV Validator}
  spec.summary       = %q{CSV Validator}
  spec.homepage      = "https://github.com/reelmetrics/csvlint.rb"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://gems.reelmetrics.com'
    spec.metadata['homepage_uri'] = spec.homepage
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ['~> 2.0']

  spec.add_dependency "mime-types"
  spec.add_dependency "colorize"
  spec.add_dependency "open_uri_redirections"
  spec.add_dependency "activesupport"
  spec.add_dependency "addressable"
  spec.add_dependency "typhoeus"
  spec.add_dependency "escape_utils"
  spec.add_dependency "uri_template"
  spec.add_dependency "thor"
  spec.add_dependency "rack"
  spec.add_dependency "net-http-persistent"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "cucumber"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "simplecov-rcov"
  spec.add_development_dependency "spork"
  spec.add_development_dependency "webmock"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-pride"
  spec.add_development_dependency "rspec-expectations"
  spec.add_development_dependency "coveralls"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "github_changelog_generator"
  spec.add_development_dependency "aruba", "0.14.14"
  spec.add_development_dependency "rdf", "< 2.0"
  spec.add_development_dependency "rdf-turtle"
  spec.add_development_dependency "henry"

end
