docker rm -f `docker ps -aq | awk '{ print $1 }'`
