module SulStyles
  class Engine < ::Rails::Engine
    isolate_namespace SulStyles

    config.after_initialize do |app|
      unless Rails.env.production?
        app.routes.prepend { mount SulStyles::Engine => '/' }
      end
    end
  end
end
