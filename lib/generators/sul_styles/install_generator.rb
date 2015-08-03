require 'rails/generators'

module SulStyles
  class Install < Rails::Generators::Base

    source_root File.expand_path('../templates', __FILE__)

    desc 'Install SulStyles'

    def bundle_install
      Bundler.with_clean_env do
        run 'bundle install'
      end
    end
  end
end
