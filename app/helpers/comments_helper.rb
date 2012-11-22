module CommentsHelper
  def nested_comments(root_comment)
    Comment.each_with_level(root_comment.self_and_descendants) do |com, level|
      content_tag(:div, com.body, :class => "level#{level}").html_safe
    end
  end
end
