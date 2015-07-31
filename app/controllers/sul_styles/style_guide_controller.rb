module SulStyles
  class StyleGuideController < ActionController::Base

    layout 'styleguide'

    def icons
    end

    def colors
      @colors = []
      @colors << parse_colors("#{SulStyles::Engine.root}/app/assets/stylesheet"\
      's/sul-styles/su_primary_colors.scss')
      @colors << parse_colors("#{SulStyles::Engine.root}/app/assets/stylesheet"\
        's/sul-styles/su_web_colors.scss')
    end

    def parse_colors(file_name)
      file = File.read(file_name)
      {
        title: file.match(/(?<=\/\*\n)(.*)(?=\*\/)/m).to_s,
        colors: file.scan(/^\$.*;$/).map { |c| c.split(':') }
      }
    end
  end
end
