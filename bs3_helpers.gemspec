$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bs3_helpers/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bs3_helpers"
  s.version     = Bs3Helpers.version
  s.authors     = ["Jeremy Bolding"]
  s.email       = ["cyberchefjay@gmail.com"]
  s.homepage    = "https://www.rubygems.org/gems/bs3_helpers"
  s.summary     = "Some Helpers for Bootstrap with Rails."
  s.description = "Some Helpers for Bootstrap with Rails"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", '~> 4.2'
  s.add_development_dependency "sqlite3", '~> 1.3'

end
