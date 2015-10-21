$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "controller_specific_assets/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "controller-specific-assets"
  s.version     = ControllerSpecificAssets::VERSION
  s.authors     = ["Jakub Bilko"]
  s.email       = ["kozulowski@gmail.com"]
  s.homepage    = "http://jakubbilko.pl"
  s.summary     = "A gem for using controller-specific javascript and css files."
  s.description = "This gem allows you to use javascript and css files that are specific to controllers. When it cannot find an asset file for the controller, it reverts to default files (application.js/css)."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]
  s.add_dependency "rails", "~> 4.2.1"
  s.add_development_dependency "sqlite3"
end
