FROM ruby:2.5.5
RUN apt-get update -qq && apt-get install -y nodejs build-essential apt-utils libpq-dev

RUN gem install bundler

RUN mkdir /api
WORKDIR /api

COPY Gemfile /api/Gemfile
COPY Gemfile.lock /api/Gemfile.lock

RUN bundle install
COPY . /api

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
