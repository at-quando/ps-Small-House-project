$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "albums/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "albums"
  s.version     = Albums::VERSION
  s.authors     = ["at-quando"]
  s.email       = ["quan.do@asiantech.vn"]
  s.homepage    = "http://www.ngoinhanho.com.vn"
  s.summary     = "Summary of Albums."
  s.description = "Description of Albums."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.4"

  s.add_development_dependency "sqlite3"
end
