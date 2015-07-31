module SulStyles
  class Engine < ::Rails::Engine
    isolate_namespace SulStyles

    initializer 'SulStyles.update_assets_path' do |app|
      unless Rails.env.production?
        app.config.assets.precompile += %w(styleguide.css)
      end
    end

    config.after_initialize do |app|
      unless Rails.env.production?
        app.routes.prepend { mount SulStyles::Engine => '/styleguide' }
      end
    end
  end
end
