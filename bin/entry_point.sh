#!/bin/bash

CONFIG_FILE=_config.yml 

# --watch --livereload
/bin/bash -c "rm -f Gemfile.lock && exec jekyll serve --watch --livereload --port=8080 --host=0.0.0.0 --verbose --trace --force_polling"&

while true; do

  inotifywait -q -e modify,move,create,delete $CONFIG_FILE

  if [ $? -eq 0 ]; then
 
    echo "Change detected to $CONFIG_FILE, restarting Jekyll"

    jekyll_pid=$(pgrep -f jekyll)
    kill -KILL $jekyll_pid

    /bin/bash -c "rm -f Gemfile.lock && exec jekyll serve --port=8080 --host=0.0.0.0 --verbose --trace --force_polling"&

  fi

done
