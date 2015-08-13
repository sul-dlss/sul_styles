# config valid only for current version of Capistrano
lock '3.4.0'

set :application, 'sul_styles'

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp
ask :user, proc { `whoami`.chomp }.call
set :home_directory, "/opt/app/#{fetch(:user)}"

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, "#{fetch(:home_directory)}/#{fetch(:application)}"

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
set :log_level, :info
