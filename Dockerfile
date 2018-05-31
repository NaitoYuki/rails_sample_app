FROM ruby:2.5.0
ENV LANG C.UTF-8

ENV APP_HOME /rails_sample_app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

RUN apt-get update && apt-get install -y curl apt-transport-https wget && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update -qq && apt-get install -y build-essential libpq-dev vim yarn

# Node.jsをインストール
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
    apt-get install nodejs

ADD Gemfile* $APP_HOME/

ENV BUNDLE_GEMFILE=$APP_HOME/Gemfile \
  BUNDLE_JOBS=2

RUN bundle install

ADD package.json* $APP_HOME/

RUN yarn install

WORKDIR $APP_HOME/
ADD . $APP_HOME
