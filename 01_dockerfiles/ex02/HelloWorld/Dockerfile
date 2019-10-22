# How to build it?
# docker build -t ft-rails:on-build .

# FROM ruby
# RUN apt-get update -y && apt-get install -y build-essential libpq-dev nodejs sqlite3

# ONBUILD COPY . /opt/app
# ONBUILD WORKDIR /opt/app

# ONBUILD EXPOSE 3000
# ONBUILD RUN bundle install
# ONBUILD RUN rake db:migrate
# ONBUILD RUN rake db:seed

FROM ruby:2.6.5
RUN apt-get update && apt-get install -y nodejs npm yarn
# RUN npm install -g yarn
# RUN apt-get upgrade yarn
# RUN yarn install --check-files
RUN gem install rails -v 6.0.0
RUN mkdir -p /opt/app
WORKDIR /opt/app
ADD . /opt/app

EXPOSE 3000
RUN bundle install 
RUN rake db:migrate 
RUN rake db:seed 