FROM ruby:2.5.3
RUN apt-get update -qq && apt-get install -y nodejs build-essential apt-utils

RUN gem install bundler -v "1.17.1"

RUN mkdir /webapp
WORKDIR /webapp

COPY Gemfile /webapp/Gemfile
COPY Gemfile.lock /webapp/Gemfile.lock

RUN bundle install
COPY . /webapp

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
