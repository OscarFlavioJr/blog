require 'redcarpet'

class Post < ApplicationRecord
  belongs_to :user

  def rendered_text
    renderer = Redcarpet::Render::HTML.new(
      filter_html: true,
      hard_wrap: true
    )

    markdown = Redcarpet::Markdown.new(
      renderer,
      fenced_code_blocks: true,
      autolink: true,
      tables: true
    )

    markdown.render(text).html_safe
  end
end
