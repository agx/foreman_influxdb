# coding: utf-8
require File.expand_path('../lib/foreman_influxdb/version', __FILE__)

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'foreman_influxdb'
  s.version     = ForemanInfluxdb::VERSION
  s.authors     = ['Guido Günther']
  s.email       = ['agx@sigxcpu.org']
  s.homepage    = 'http://github.com/agx/foreman_influxdb'
  s.summary     = 'Adds influxdb integration to foreman'
  s.description = 'adds influxdb support to foreman'
  s.licenses    = ['GPL-3']

  s.files = Dir['{app,config,db,lib}/**/*'] + %w(LICENSE Rakefile README.md foreman_influxdb.yaml.example)
  s.test_files = Dir['test/**/*']

  s.add_dependency 'influxdb-rails', '>= 0.1.11'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rubocop', '~> 0.42'
end
