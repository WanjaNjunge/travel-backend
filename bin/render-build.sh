#!/usr/bin/env bash
# exit on error
set -o errexit



# Build commands for back end
bundle install
bundle exec rake db:migrate 
bundle exec rake db:seed # if you have seed data, run this command for the initial deploy only to avoid duplicate records