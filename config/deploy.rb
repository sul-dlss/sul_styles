# config valid only for current version of Capistrano
set :application, 'sul_styles'
set :repo_url, 'https://github.com/sul-dlss/sul_styles.git'
# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, '/opt/app/cdn/sul_styles'

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
set :log_level, :info
