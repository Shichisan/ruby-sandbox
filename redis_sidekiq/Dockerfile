FROM ruby:2.5.5
RUN apt-get update -qq && apt-get install -y apt-utils nodejs build-essential libpq-dev mysql-client

RUN gem install bundler

RUN mkdir /app
WORKDIR /app

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

RUN bundle install
COPY . /app

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
