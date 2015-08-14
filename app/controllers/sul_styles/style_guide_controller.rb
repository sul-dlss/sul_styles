module SulStyles
  class StyleGuideController < ActionController::Base

    layout 'styleguide'

    def index
    end

    def icons
      @icons = []
      @icons << parse_icons("#{SulStyles::Engine.root}/app/assets/stylesheets/_sul-icons-rails.scss")
      @icons << parse_icon_aliases("#{SulStyles::Engine.root}/app/assets/stylesheets/_sul-icons-aliases.scss")
    end

    def colors
      @colors = SULStyles::Colors.new.all
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
