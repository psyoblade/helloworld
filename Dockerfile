FROM ubuntu:18.04
LABEL maintainer="student@lg.com"
# RUN apt-get update && apt-get install -y rsync tree
# ADD ./service.sh /tmp
EXPOSE 22 873
# ENTRYPOINT ["/bin/bash", "/tmp/service.sh" ]
# CMD ["default-options"]
