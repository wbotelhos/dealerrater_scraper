FROM ruby:2.7.2-alpine

WORKDIR /var/www/app

RUN apk --quiet --update add --no-cache --virtual .packages g++ make

COPY Gemfile* ./

RUN gem install bundler -v '~> 2' --no-document
RUN bundle config build.nokogiri --use-system-libraries
RUN bundle install --jobs=4

RUN apk del .packages

COPY . /var/www/app
