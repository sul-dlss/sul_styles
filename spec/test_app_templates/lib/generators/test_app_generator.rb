require 'rails/generators'

class TestAppGenerator < Rails::Generators::Base
  source_root './spec/test_app_templates'

  def remove_application_css
    remove_file 'app/assets/stylesheets/application.css'
  end

  def add_application_scss
    create_file 'app/assets/stylesheets/application.scss' do
      '@import \'sul-styles\';'
    end
  end

  def install_engine
    generate 'sul_styles:install'
  end
end
