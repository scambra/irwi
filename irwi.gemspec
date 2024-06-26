require File.expand_path("../lib/irwi/version", __FILE__)

Gem::Specification.new do |s|
  s.name = "irwi"
  s.version = Irwi::VERSION::STRING
  s.platform = Gem::Platform::RUBY
  s.authors = ["Alexey Noskov", "Ravi Bhim"]
  s.email = ["alexey.noskov@gmail.com", "ravi.bhim@yahoo.com"]
  s.homepage = "http://github.com/alno/irwi"
  s.summary = "Irwi is Ruby on Rails plugin which adds wiki functionality to your application."
  s.description = "Irwi is Ruby on Rails plugin which adds wiki functionality to your application."

  s.required_ruby_version = ">= 1.9.3"
  s.required_rubygems_version = ">= 1.3.6"

  # Gem dependencies
  s.add_dependency "diff-lcs", ">= 1.1.2"

  s.add_dependency "activerecord", ">= 5.0"
  s.add_dependency "activesupport", ">= 4.0"
  s.add_dependency "actionpack", ">= 4.0"
  s.add_dependency "rails_autolink", ">= 1.0" # TODO: should be optional

  # Development dependencies
  s.add_development_dependency "rspec", ">=2.0"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "RedCloth"
  s.add_development_dependency "will_paginate"

  # Gem files
  s.files = Dir["app/views/**/*.erb", "lib/**/*.rb", "bin/*", "MIT-LICENSE", "README.rdoc"]
  s.extra_rdoc_files = ["README.rdoc", "MIT-LICENSE"]
  s.require_path = 'lib'

  # Info
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Irwi", "--main", "README.rdoc"]
end
