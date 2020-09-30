FROM ruby:2.6.6

COPY . /app

RUN bundle install
RUN gem install dotenv

WORKDIR /app

EXPOSE 14147

CMD ["main.rb"]
