# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "autocomplete-off"
  gem.homepage = "http://github.com/wharsojo/rails-no-cache"
  gem.license = "MIT"
  gem.summary = %Q{Adds `Header="no-cache"`}
  gem.description = %Q{Adds `Header="no-cache"`}
  gem.email = "wharsojo@gmail.com"
  gem.authors = ["Wharsojo"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new