module ApplicationHelper
  def markdown(text)
    options = [:hard_wrap, :tables, :autolink, :no_intraemphasis, :strikethrough]
    Redcarpet.new(text, *options).to_html.html_safe
  end
end