# Create a Jekyll container from a Ruby Alpine image
# At a minimum, use Ruby 2.5 or later
FROM ruby:2.7-alpine3.15

# Add Jekyll dependencies to alpine
RUN apk update
RUN apk add --no-cache build-base gcc cmake git

# Update the Ruby bundler and íntall Jekyll
RUN gem update bundler && gem install bundler jekyll