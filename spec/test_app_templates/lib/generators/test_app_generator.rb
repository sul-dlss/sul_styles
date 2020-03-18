require 'rails/generators'

class TestAppGenerator < Rails::Generators::Base
  source_root './spec/test_app_templates'

  def appease_webpacker
    empty_directory 'app/assets/images'
  end

  def install_engine
    generate 'sul_styles:install'
  end
end
