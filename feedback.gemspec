$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "feedback/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "feedback"
  s.version     = Feedback::VERSION
  s.email       = ["PabloVicente.Carrera@moneyadviceservice.org.uk, RubenGarcia.Martin@moneyadviceservice.org.uk"]
  s.authors     = ["Pablo Vicente", "Ruben Martin"]
  s.homepage    = "https://github.com/moneyadviceservice/feedback"
  s.summary     = "Feedback form"
  s.description = "Feedback form"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["Rakefile", "README.md"]

  s.add_dependency "rails", "~> 3.2.14"
end
