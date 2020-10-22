module SulStyles
  class Engine < ::Rails::Engine
    initializer 'SulStyles.update_assets_path' do |app|
      unless Rails.env.production?
        app.config.assets.precompile += %w(styleguide.css)
      end
    end
  end
end
