FROM ruby:3.2.2
ENV RAILS_ENV=development
EXPOSE 8000
WORKDIR /work/
COPY ./Gemfile ./Gemfile.lock ./
RUN bundle install
COPY ./ ./
RUN rails db:create && rails db:migrate && rails db:seed
CMD ["rails", "server", "-b", "0.0.0.0", "-p", "8000"]
