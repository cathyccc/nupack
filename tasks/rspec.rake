# From rspec documentation rake task (https://www.relishapp.com/rspec/rspec-core/v/3-0/docs/command-line/rake-task)
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task :default => :spec
