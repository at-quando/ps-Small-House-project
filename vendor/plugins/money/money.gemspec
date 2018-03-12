$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "money/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "money"
  s.version     = Money::VERSION
  s.authors     = ["at-quando"]
  s.email       = ["quan.do@asiantech.vn"]
  s.homepage    = "http://www.ngoinhanho.com.vn"
  s.summary     = "Summary of Money."
  s.description = "Description of Money."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.4"
  s.add_dependency "spina"

  s.add_development_dependency "sqlite3"
end
