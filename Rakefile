#!/usr/bin/env rake
begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

begin
  require 'rubocop/rake_task'
  RuboCop::RakeTask.new
rescue => _
  puts 'Rubocop not loaded.'
end

task :default do
  Rake::Task['rubocop'].execute
end
