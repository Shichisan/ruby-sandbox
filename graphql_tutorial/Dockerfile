FROM ruby:2.5.3
RUN apt-get update -qq && apt-get install -y build-essential nodejs apt-utils mysql-client

RUN mkdir /api
WORKDIR /api

COPY Gemfile /api/Gemfile
COPY Gemfile.lock /api/Gemfile.lock

RUN bundle install
COPY . /api

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
