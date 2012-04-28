module ApplicationHelper
  def markdown(text)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML.new(
        :hard_wrap => true, :filter_html => true, :safe_links_only => true),
        :no_intraemphasis => true, :autolink => true)
    return markdown.render(text).html_safe
  end
  def title(page_title)
    content_for(:title) { page_title }
  end
end