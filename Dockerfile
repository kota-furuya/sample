FROM ruby:2.5.3
WORKDIR /hello_app
RUN curl -sL https://deb.nodesource.com/setup_11.x | bash -
RUN apt-get install -y nodejs
COPY hello_app /hello_app
RUN bundle install
CMD ["rails", "server", "-b", "0.0.0.0"]
