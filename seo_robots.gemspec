$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "seo_robots/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "seo_robots"
  s.version     = SEORobots::VERSION
  s.authors     = ["jSiliconSalad Tech Team"]
  s.email       = ["tech@siliconsalad.com"]
  s.homepage    = "TODO"
  s.summary     = "a model for robots.txt"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.1"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "annotate"
end
