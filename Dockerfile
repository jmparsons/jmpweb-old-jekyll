FROM gliderlabs/alpine:edge

RUN apk-install bash build-base libffi-dev zlib-dev libxml2-dev libxslt-dev ruby ruby-dev nodejs
RUN gem install bundler jekyll --no-ri --no-rdoc
RUN gem install nokogiri -v 1.6.8.1 --no-ri --no-rdoc -- --use-system-libraries
RUN gem install io-console --no-ri --no-rdoc

WORKDIR /tmp
ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock
RUN bundle install

RUN mkdir -p /app
VOLUME ["/app"]

WORKDIR /app
ADD . /app
EXPOSE 4000