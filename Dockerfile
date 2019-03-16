FROM ruby:2.6
# FROM ruby:2.5.3-slim-stretch

RUN apt-get update && \
    : "必要ライブラリーのインストール" && \
    apt-get install -y \
    build-essential libpq-dev nodejs \
    imagemagick libmagick++-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*;
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock

RUN bundle install
COPY . /myapp
