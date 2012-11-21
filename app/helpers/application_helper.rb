module ApplicationHelper
  def markdown(text)
    render = Redcarpet::Render::HTML.new(hard_wrap: true, filter_html:true)
    options = {
       autolink: true,
       no_intra_emphasis: true,
       fenced_code_blocks: true,
       lax_html_blocks: true,
       vsuperscript: true,
       tables: true,
       no_intra_emphasis: true,
       fenced_code_blocks: true,
       strikethrough: true,
       ax_spacing: true,
       space_after_headers:true
     }
     Redcarpet::Markdown.new(render, options).render(text).html_safe
  end

  def flash_class(type)
    case type
    when :alert
      "alert-error"
    when :notice
      "alert-success"
    else
      ""
    end
  end
end