FROM ruby:alpine
MAINTAINER Nick Linnell <nicklinnell@gmail.com>
ENV RUBOCOP_VERSION=0.47.1
RUN gem install rubocop -v $RUBOCOP_VERSION
ENTRYPOINT ["rubocop"]
