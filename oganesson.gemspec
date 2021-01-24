# frozen_string_literal: true

require_relative "lib/oganesson/version"

Gem::Specification.new do |spec|
  spec.name          = "oganesson"
  spec.version       = Oganesson::VERSION
  spec.authors       = ["Seth Jones"]
  spec.email         = ["oganesson_gem@protonmail.com"]

  spec.summary       = "oganesson is an api testing tool with reporting and cli interface"
  spec.description   = "oganesson is an api testing tool with reporting and cli interface"
  spec.homepage      = 'https://rubygems.org/gems/oganesson'
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/oganesson-gem/oganesson"
  spec.metadata["changelog_uri"] = "https://github.com/oganesson-gem/oganesson/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

   spec.add_dependency "httparty"
   spec.add_dependency "report_builder"
   spec.add_dependency "rspec"
   spec.add_dependency "thor"
   spec.add_dependency "yard"

end
