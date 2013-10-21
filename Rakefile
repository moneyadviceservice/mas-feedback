#!/usr/bin/env rake
begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

load 'mas/build/tasks/gem_build.rake'

APP_RAKEFILE = File.expand_path("../spec/dummy/Rakefile", __FILE__)
load 'rails/tasks/engine.rake'

Bundler::GemHelper.install_tasks

Dir[File.join(File.dirname(__FILE__), 'lib/tasks/**/*.rake')].each { |f| load f }

desc 'Run all specs and features'
task :default => ['app:spec']
