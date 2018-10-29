FROM ruby:2.5.3
WORKDIR /hello_app
COPY hello_app /hello_app
RUN bundle install
