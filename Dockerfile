FROM ruby:2.3.1-alpine

RUN \
  # Refresh package list
  apk update \
  # Install build dependencies
  && apk add --no-cache --virtual build-deps \
  # Equivalent of Debian's build-essential
    alpine-sdk \
  # Install actual dependencies
  && apk add --no-cache git icu-dev libidn-dev ruby-dev\
  # add package for wikicloth
  && gem install idn-ruby\
  # version
  && gem install twitter-text -v "1.14.7"\
  # Install Gollum and associated packages
  && gem install gollum github-markdown asciidoctor creole org-ruby RedCloth\
  # Install wikicloth
  && gem install wikicloth \
  # Clean up build dependencies
  && apk del build-deps

# Create volume at /wiki
VOLUME /wiki
WORKDIR /wiki

# Expose default gollum port 4567

ENTRYPOINT ["/usr/local/bundle/bin/gollum", "/wiki", "--port", "4567"]
EXPOSE 4567
