# # Encoding: UTF-8
# require 'rake'
# Gem::Specification.new do |spec|
#   spec.name = 'devise_dk_nemid'
#   spec.version = '1.0.7'

#   spec.authors = [ 'Morten Roenne' ]
#   spec.required_ruby_version = '>= 2.3.4'
#   spec.summary = 'Devise NemID login extension'
#   spec.description = 'Devise NemID authentication module'
#   spec.summary = <<-SUM
#     This extension enables a devise setup to login through Danish NemID.
#     You are required to be registered at NemId as service provider in 
#     order to use this.
# SUM
#   spec.files = `git ls-files`.split("\n")
#   spec.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
#   spec.has_rdoc = false
#   spec.license = 'GPL-2.0'
#   spec.require_paths = ["lib"]

#   spec.add_runtime_dependency("devise", "~> 4.2")
#   spec.add_runtime_dependency("savon", "~> 2.11")
#   spec.add_runtime_dependency("xmldsig", "~> 0.6")
#   spec.add_runtime_dependency("jquery-cookie-rails", "~> 1.3")
#   spec.add_runtime_dependency("uuidtools", "~> 2.1")

#   spec.add_development_dependency('rspec')

# end

# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "dk_nemid/version"

Gem::Specification.new do |spec|
  spec.name          = "devise_dk_nemid"
  spec.version       = DeviseDkNemid::VERSION
  #spec.version       = '1.0.8'
  spec.authors       = ["Daniel"]
  spec.email         = ["znowm4n@gmail.com"]

  #spec.summary       = %q{TODO: Write a short summary, because Rubygems requires one.}
  spec.summary = <<-SUM
     This extension enables a devise setup to login through Danish NemID.
     You are required to be registered at NemId as service provider in 
     order to use this.
  SUM
  spec.description   = "Devise NemID authentication module"
  spec.homepage      = "http://github.com/Znow/devise_dk_nemid"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  
  spec.add_dependency("devise", "~> 4.2")
  spec.add_dependency("savon", "~> 2.11")
  spec.add_dependency("xmldsig", "~> 0.6")
  spec.add_dependency("jquery-cookie-rails", "~> 1.3")
  spec.add_dependency("uuidtools", "~> 2.1")

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
