module ApplicationHelper
  def markdown(text)
    options = [:hard_wrap, :tables, :autolink, :no_intraemphasis, :strikethrough]
    Redcarpet.new(text, *options).to_html.html_safe
  end
  def title(page_title)
    content_for(:title) { page_title }
  end
end