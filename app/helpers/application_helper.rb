module ApplicationHelper
  def posts_for_sidebar
    Post.all.order('created_at DESC')
  end

  def markdown(text)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
    return markdown.render(text).html_safe
  end
end
