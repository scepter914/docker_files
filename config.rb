require 'rubygems'
require 'gollum/app'

# option
Precious::App.set(:wiki_options,{
  :show_all => true,
  :allow_uploads => true,
  :mathjax => true,
  :css => true,
  :pagination_count => 40,
})


