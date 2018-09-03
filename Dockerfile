FROM ruby:2.5
ADD entrypoint.sh /entrypoint.sh
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs && chmod +x /entrypoint.sh
RUN mkdir /myapp
WORKDIR /myapp
ADD Gemfile Gemfile.lock ./
RUN gem install --user-install bundler
RUN bundle install
Add . /myapp
ENTRYPOINT ["/entrypoint.sh"]
#CMD ["/bin/bash"]