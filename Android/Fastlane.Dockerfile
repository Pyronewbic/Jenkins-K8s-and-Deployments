FROM ruby:2.6.0-alpine

RUN apk add --update --no-cache ruby-dev build-base libxml2-dev libxslt-dev
RUN gem i fastlane -v 2.180.1
RUN gem install bundler -v 2.2.15

ENV LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8

ENTRYPOINT ["fastlane"]
CMD []