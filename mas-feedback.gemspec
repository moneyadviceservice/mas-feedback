$:.push File.expand_path("../lib", __FILE__)

require 'mas/feedback/version'

Gem::Specification.new do |s|
  s.name        = "mas-feedback"
  s.version     = MAS::Feedback::Version::STRING
  s.authors     = ["MAS"]
  s.email       = ["enquiries@moneyadviceservice.org.uk"]
  s.homepage    = "https://github.com/moneyadviceservice/feedback"
  s.summary     = "Gem for adding feedback forms to applications."
  s.description = ""

  s.files = `git ls-files`.split("\n")

  s.add_dependency "rails", "~> 3.2.13"
end


