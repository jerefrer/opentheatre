class ImagePreviewInput < SimpleForm::Inputs::FileInput
  def input
    (image_tag_if_present << @builder.file_field(attribute_name, input_html_options)).html_safe
  end

private

  def image_tag_if_present
    out = ''
    if object.send("#{attribute_name}?")
      out << template.image_tag(object.send(attribute_name).tap {|o| break o.send(version) if version}.send('url'))
      out << ' '
    end
    out
  end

  def version
    input_html_options.delete(:preview_version) || :thumb
  end
end