#!/bin/bash

bundle install
rails db:create
rails db:migrate

exec "$@"
