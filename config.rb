require 'rubygems'
require 'gollum/app'

# option
Precious::App.set(:wiki_options,{
  :show_all => true,
  :allow_uploads => true,
  :mathjax => true,
  :css => true,
  :js => true,
  :live_preview => true,
})

# table color
sanitizer = Gollum::Sanitization.new
sanitizer.attributes[:all].push 'style' # Attributes
Precious::App.set(:wiki_options, {:sanitization => sanitizer})

# iframe
sanitizer = Gollum::Sanitization.new
sanitizer.elements.push 'iframe' # Tag
sanitizer.attributes['iframe'] = [
  'width', 'height', 'src', 'frameborder', 'allowfullscreen'
]  # Attributes
Precious::App.set(:wiki_options, { :sanitization => sanitizer })

