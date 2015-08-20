require 'bundler/gem_tasks'
require 'engine_cart/rake_task'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task default: :ci

desc 'Run continuous integration build'
task :ci do
  Rake::Task['engine_cart:generate'].invoke
  ENV['RAIL_ENV'] = 'test'
  Rake::Task['spec'].invoke
end

task :build_dist do
  dist_dir = './dist/' + SulStyles::VERSION
  asset_dir = './app/assets'

  # Create the distribution directory
  FileUtils.mkdir_p(dist_dir)

  # Copy the fonts over to the dist directory
  FileUtils.cp_r(asset_dir + '/fonts/.', dist_dir)

  # Create sul-icons.css
  `bundle exec sass -C --sourcemap=none #{asset_dir + '/stylesheets/sul-icons/build.scss'} #{dist_dir + '/sul-icons.css'}`

  # Create a minified version of sul-icons.css
  `bundle exec sass -C --sourcemap=none --style=compressed #{asset_dir + '/stylesheets/sul-icons/build.scss'} #{dist_dir + '/sul-icons.min.css'}`
end
