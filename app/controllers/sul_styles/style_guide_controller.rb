module SulStyles
  class StyleGuideController < ActionController::Base

    layout 'styleguide'

    def icons
      @icons = []
      @icons << parse_icons("#{SulStyles::Engine.root}/app/assets/stylesheets/_sul-icons-rails.scss")
      @icons << parse_icon_aliases("#{SulStyles::Engine.root}/app/assets/stylesheets/_sul-icons-aliases.scss")
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

    def parse_icons(file_name)
      file = File.read(file_name)
      {
        title: 'Icons',
        icons: file.scan(/(?<=\.)(.*)(?=})/).map { |i| i[0].split(':before { content: "\\') }
      }
    end

    def parse_icon_aliases(file_name)
      file = File.read(file_name)
      {
        title: 'Icon aliases',
        icons: file.scan(/(?<=\.)(.*)(?= {)/)
      }
    end
  end
end
