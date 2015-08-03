require 'bundler/gem_tasks'
require 'engine_cart/rake_task'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task default: :ci

desc 'Run continuous integration build'
task :ci do
  Rake::Task['engine_cart:generate'].invoke
  ENV['RAIL_ENV']= 'test'
  Rake::Task['spec'].invoke
end
