FROM ruby:2.5
RUN bundle config --global frozen 1

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . /usr/src/app

ENTRYPOINT ["bundle exec parallel_cucumber features/* -n 1 -o '-t  @done'"]