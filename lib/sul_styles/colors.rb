module SULStyles
  ###
  #  SULStyles::Colors class provides the ability to parse a CSS
  #  stylesheet to get all of the colors assigned to variables.
  ###
  class Colors
    def all
      @all ||= color_files.map do |file|
        self.class.parse_colors(file)
      end
    end

    def colors
      all.each_with_object({}) do |file, hash|
        file.colors.each do |color_data|
          hash[color_data.value] = color_data.variable
        end
      end
    end

    class << self
      def parse_colors(file_name)
        file = File.read(file_name)
        CssFile.new(
          title: file.match(%r{(?<=\/\*\n)(.*)(?=\*\/)}m).to_s.strip,
          colors: file.scan(/^\$.*;$/).map do |c|
            color_data = c.split(':')
            ColorData.new(
              variable: color_data.first, value: color_data.last.strip
            )
          end
        )
      end
    end

    private

    def color_files
      [primary_colors_file, web_colors_file]
    end

    def primary_colors_file
      "#{stylesheets_directory}/sul-styles/su_primary_colors.scss"
    end

    def web_colors_file
      "#{stylesheets_directory}/sul-styles/su_web_colors.scss"
    end

    def stylesheets_directory
      "#{SulStyles::Engine.root}/app/assets/stylesheets"
    end

    ###
    #  Utility class to model a CSS file that has a title and an array of colors
    ###
    class CssFile
      attr_reader :title, :colors
      def initialize(title:, colors:)
        @title = title
        @colors = colors
      end
    end

    ###
    #  Utility class to model a css variable and its value
    ###
    class ColorData
      attr_reader :variable, :value
      def initialize(variable:, value:)
        @variable = variable
        @value = value.gsub(/;$/, '')
      end
    end
  end
end
