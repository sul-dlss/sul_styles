server 'sul-cdn-stage.stanford.edu', user: 'cdn', roles: %w{web db app}

Capistrano::OneTimeKey.generate_one_time_key!
set :rails_env, 'development'
