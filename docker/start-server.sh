#!/bin/bash

echo "Loading schema"
bundle exec rake db:schema:load
echo "Search indexing"
bundle exec rake ts:index
echo "Search starting"
bundle exec rake ts:start
echo "Server starting"
bundle exec rails server