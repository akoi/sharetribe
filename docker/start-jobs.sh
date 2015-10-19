#!/bin/bash

#Wait for sphinx server to have started - this way we know the DB has been loaded
echo -n "Waiting for searchd to start..."
until pids=$(pgrep searchd); do   
	echo -n .
    sleep 2
done

echo "Starting jobs"
bundle exec rake jobs:work