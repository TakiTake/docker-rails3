# DOCKER-VERSION 0.8.0 
FROM takitake/anyenv
MAINTAINER takitake <TakiTake.create@gmail.com>

# Install Dependencies
RUN apt-get install -y \
  build-essential \
  sqlite3 \
  libsqlite3-dev \
  libxml2-dev \
  libxslt1-dev \
  libreadline-dev \
  libyaml-dev \
  libcurl4-openssl-dev \
  libncurses5-dev \
  libgdbm-dev \
  libffi-dev \
  autoconf

# Install Ruby & Rails
RUN . /etc/profile.d/anyenv.sh && anyenv install rbenv

RUN . /etc/profile.d/anyenv.sh && rbenv  install 1.9.3-p547
RUN . /etc/profile.d/anyenv.sh && rbenv  global  1.9.3-p547 && gem install rails -v 3.2.19
