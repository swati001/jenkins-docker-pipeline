#!/bin/bash
mkdir -p /myapp
# bundle install
bundle exec parallel_cucumber features/ -n 2 --group-by scenarios -o '-t @done'