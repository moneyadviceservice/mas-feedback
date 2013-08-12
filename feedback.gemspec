$:.push File.expand_path('../lib', __FILE__)

require 'feedback/version'

Gem::Specification.new do |s|
  s.name        = 'feedback'
  s.version     = Feedback::VERSION
  s.authors     = ['Andrew Garner', 'Pablo Vicente', 'Ruben Martin']
  s.email       = ['Andrew.Garner@moneyadviceservice.org.uk',
                   'PabloVicente.Carrera@moneyadviceservice.org.uk',
                   'RubenGarcia.Martin@moneyadviceservice.org.uk']
  s.homepage    = 'https://github.com/moneyadviceservice/feedback'
  s.summary     = 'Feedback form'
  s.description = 'Feedback form'

  s.files      = Dir['{app,config,db,lib}/**/*'] + ['Rakefile', 'README.md']
  s.test_files = Dir['spec/**/*']

  s.add_dependency 'rails', '~> 3.2.14'
  s.add_development_dependency 'rspec-rails', '~> 2.14'
  s.add_development_dependency 'factory_girl_rails', '~> 4.0'
end
