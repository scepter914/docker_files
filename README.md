## Description

- This is config file of gollum 

- When you start gollum, add option
    - gollum --config config.rb --css 


## Dockerfile

- Docker hub <https://hub.docker.com/r/scepter914/gollum_files/tags/>

- you can use .mediawiki on this container

## config.rb 

1. add table with color on .mediawiki 
    - example

```
{|class="wikitable" 
|- style="border-top:3px solid #f52; background-color:#1ef"
| hoge || huga
|-
| style="background-color:#f8b"| hoge || huga
|}
```

2. enable iframe

## custom css

- If you don't like custom, commet out parts of function.
- function
    - wide edit textarea 
    - wide page
    - narrow sidebar
    - narrom between lines
    - narrow between Indented lines (ul)
    - become orange on top button

## reveal.js template

- slide_default.html is template html for reveal.js

