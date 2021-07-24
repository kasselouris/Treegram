FROM ruby:2.5.1

RUN apt-get update -qq && apt-get install -y nodejs
WORKDIR /treegram
COPY Gemfile /treegram/Gemfile
COPY Gemfile.lock /treegram/Gemfile.lock
RUN bundle install
COPY . /treegram
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
