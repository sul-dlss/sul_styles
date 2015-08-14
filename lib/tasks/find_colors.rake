namespace :sul_styles do
  desc 'Check scss files in app/assets/stylesheets for SUL Styles provided colors'
  task :check_local_colors do
    gem_colors = SULStyles::Colors.new.colors
    Dir.glob('app/assets/stylesheets/**/*.scss').each do |file_name|
      file = File.read(file_name)
      file.scan(/(#\S{6}|#\S{3}).*;$/).each do |colors|
        colors.each do |color|
          if gem_colors[color]
            puts "The color #{color} is present in #{file_name}. This color is provided by SUL Styles under the variable #{gem_colors[color]}."
          end
        end
      end
    end
  end
end
