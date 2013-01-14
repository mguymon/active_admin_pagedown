class PagedownTextInput < Formtastic::Inputs::StringInput


  def input_html_options
    super.merge(:class => "wmd-input")
  end

  def to_html
    input_wrapping do

      label_html <<

          template.content_tag(:div, :class => 'wmd-panel' ) do
            template.content_tag(:div, "", :class => 'wmd-button-bar') <<
                builder.text_area(method, input_html_options)
          end <<

          template.content_tag(:div, "", :style=> 'margin-top:20px' ) do
            template.content_tag(:label, "Preview" ) <<
                template.content_tag(:div, "", :class => "wmd-panel wmd-preview" )
          end
    end.html_safe
  end
end