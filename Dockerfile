FROM ruby:2.6.5-slim-buster

WORKDIR /app
ADD . /app

RUN bundle install
