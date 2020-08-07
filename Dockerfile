FROM ruby:2.6.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs postgresql-client
# install bundler in specific version
RUN gem install bundler --version "2.1.4"
RUN mkdir /teste_backend
WORKDIR /teste_backend
COPY Gemfile /teste_backend/Gemfile
COPY Gemfile.lock /teste_backend/Gemfile.lock
RUN bundle install
COPY . /teste_backend

# Add a script to be executed every time the container starts.
COPY entrypoints/docker-entrypoint.sh /usr/bin/
RUN chmod +x entrypoints/docker-entrypoint.sh
ENTRYPOINT ["./entrypoints/docker-entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
