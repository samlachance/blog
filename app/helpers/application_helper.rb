module ApplicationHelper
  def posts_for_sidebar
    Post.all.order('created_at DESC')
  end
end
