module AdminHelper
  def no_data(text)
    content_tag(:div, text, class: 'warning callout')
  end
end
