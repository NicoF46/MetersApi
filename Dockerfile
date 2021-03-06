FROM ruby:3.0.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev sqlite3 nodejs yarn
RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
COPY . /myapp