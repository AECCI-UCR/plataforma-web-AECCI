module ApplicationHelper

  # Métodos auxiliar para mapear flash key en bootstrap css class
  BOOTSTRAP_FLASH_MSG = {
      notice: 'success',
      alert: 'danger',
      error: 'danger'
      #default: 'info'
  }

  def bootstrap_class_for(message_type)
    BOOTSTRAP_FLASH_MSG.fetch message_type.to_sym, message_type
  end

  # Métodos para el parse de markdown a html
  class CodeRayify < Redcarpet::Render::HTML
    def block_code(code, language)
      CodeRay.scan(code, language).div
    end
  end

  def markdown(text)
    coderayified = CodeRayify.new(filter_html: false, hard_wrap: true)
    options = {
        fenced_code_blocks: true,
        no_intra_emphasis: true,
        autolink: true,
        lax_html_blocks: true,
        tables: true,
    }
    markdown_to_html = Redcarpet::Markdown.new(coderayified, options)
    markdown_to_html.render(text).html_safe
  end

end
