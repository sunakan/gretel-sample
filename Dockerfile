FROM ruby:2.6.3-slim-stretch
WORKDIR /app
RUN apt-get update \
  && apt-get install -y build-essential patch ruby-dev zlib1g-dev liblzma-dev

COPY Gemfile* ./
RUN bundle install -j4
COPY . ./
