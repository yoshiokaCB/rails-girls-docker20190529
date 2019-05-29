#!/bin/bash

bundle install
rails db:migrate

exec "$@"
