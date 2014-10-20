module Jekyll
  class ToDashTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text
      puts(@text)
    end

    def render(context)
      @text.tr(" ", "-")
    end
  end
end

Liquid::Template.register_tag('to_dash', Jekyll::ToDashTag)
