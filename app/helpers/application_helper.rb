module ApplicationHelper

def placeholder_image_url(size="200x150", *args)
  options = args.extract_options!
  # If fg is present, bg is required (and vice versa)
  options[:bg] = "FFF" if options[:fg].present? && options[:bg].blank?
  options[:fg] = "000" if options[:bg].present? && options[:fg].blank?
  parts = []
  parts << "http://placehold.it"
  parts << "/#{size}"
  parts << "/#{options[:bg]}" if options[:bg].present?
  parts << "/#{options[:fg]}" if options[:fg].present?
  parts << "&text=#{options[:text]}" if options[:text].present?
  parts.join ""
end

end
