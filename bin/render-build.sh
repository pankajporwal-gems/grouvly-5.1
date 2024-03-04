#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
./bin/rake assets:precompile
./bin/rake assets:clean
./bin/rails db:create
./bin/rails db:migrate
./bin/rails db:seed