FROM ruby:2.6.2
# FROM ruby:2.5.3-slim-stretch

RUN apt-get update && \
    : "必要ライブラリーのインストール" && \
    apt-get install -y \
    build-essential libpq-dev nodejs \
    imagemagick libmagick++-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*;
WORKDIR /myapp
COPY . /myapp
COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh && \
    bundle install

EXPOSE 3000

ENTRYPOINT ["/entrypoint.sh"]
CMD ["rails", "server", "-b", "0.0.0.0"]
